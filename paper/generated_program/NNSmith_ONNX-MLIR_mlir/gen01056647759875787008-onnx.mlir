module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2] , \22name\22 : \22v6_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @constant_7(dense<[[[[[4], [6]]]]]> : tensor<1x1x1x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<2 x array<1 x i32>>>>>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v6_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(-2147483648 : i32) : i32
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %17 = llvm.insertvalue %15, %16[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %18 = llvm.insertvalue %15, %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.insertvalue %19, %18[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %21 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %23 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %24 = llvm.insertvalue %22, %23[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %25 = llvm.insertvalue %22, %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %26 = llvm.mlir.constant(0 : index) : i64
    %27 = llvm.insertvalue %26, %25[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %28 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x array<1 x i32>>>>>>
    %29 = llvm.bitcast %28 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x array<1 x i32>>>>>> to !llvm.ptr<i32>
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %31 = llvm.insertvalue %29, %30[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.insertvalue %33, %32[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.insertvalue %35, %34[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.mlir.constant(2 : index) : i64
    %38 = llvm.insertvalue %37, %36[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.insertvalue %39, %38[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.mlir.constant(2 : index) : i64
    %42 = llvm.insertvalue %41, %40[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %45 = llvm.mlir.constant(2 : index) : i64
    %46 = llvm.insertvalue %45, %44[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %47 = llvm.mlir.constant(2 : index) : i64
    %48 = llvm.insertvalue %47, %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.insertvalue %49, %48[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.insertvalue %51, %50[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.insertvalue %53, %52[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.mlir.constant(2 : index) : i64
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.mlir.constant(2 : index) : i64
    %59 = llvm.mlir.constant(2 : index) : i64
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.mlir.constant(4 : index) : i64
    %62 = llvm.mlir.constant(4 : index) : i64
    %63 = llvm.mlir.constant(8 : index) : i64
    %64 = llvm.mlir.constant(8 : index) : i64
    %65 = llvm.mlir.null : !llvm.ptr<i32>
    %66 = llvm.getelementptr %65[%64] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %67 = llvm.ptrtoint %66 : !llvm.ptr<i32> to i64
    %68 = llvm.mlir.constant(16 : index) : i64
    %69 = llvm.add %67, %68  : i64
    %70 = llvm.call @malloc(%69) : (i64) -> !llvm.ptr<i8>
    %71 = llvm.bitcast %70 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %72 = llvm.ptrtoint %71 : !llvm.ptr<i32> to i64
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.sub %68, %73  : i64
    %75 = llvm.add %72, %74  : i64
    %76 = llvm.urem %75, %68  : i64
    %77 = llvm.sub %75, %76  : i64
    %78 = llvm.inttoptr %77 : i64 to !llvm.ptr<i32>
    %79 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %80 = llvm.insertvalue %71, %79[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %81 = llvm.insertvalue %78, %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.insertvalue %82, %81[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %84 = llvm.insertvalue %55, %83[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %85 = llvm.insertvalue %56, %84[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %86 = llvm.insertvalue %57, %85[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %87 = llvm.insertvalue %58, %86[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %88 = llvm.insertvalue %59, %87[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %89 = llvm.insertvalue %63, %88[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %90 = llvm.insertvalue %62, %89[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %91 = llvm.insertvalue %61, %90[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %92 = llvm.insertvalue %59, %91[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %93 = llvm.insertvalue %60, %92[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %94 = llvm.mlir.constant(0 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%94 : i64)
  ^bb1(%97: i64):  // 2 preds: ^bb0, ^bb14
    %98 = llvm.icmp "slt" %97, %95 : i64
    llvm.cond_br %98, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %99 = llvm.mlir.constant(0 : index) : i64
    %100 = llvm.mlir.constant(2 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%99 : i64)
  ^bb3(%102: i64):  // 2 preds: ^bb2, ^bb13
    %103 = llvm.icmp "slt" %102, %100 : i64
    llvm.cond_br %103, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %104 = llvm.mlir.constant(0 : index) : i64
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%104 : i64)
  ^bb5(%107: i64):  // 2 preds: ^bb4, ^bb12
    %108 = llvm.icmp "slt" %107, %105 : i64
    llvm.cond_br %108, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    %109 = llvm.mlir.constant(0 : index) : i64
    %110 = llvm.mlir.constant(2 : index) : i64
    %111 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%109 : i64)
  ^bb7(%112: i64):  // 2 preds: ^bb6, ^bb11
    %113 = llvm.icmp "slt" %112, %110 : i64
    llvm.cond_br %113, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %114 = llvm.mlir.constant(0 : index) : i64
    %115 = llvm.mlir.constant(2 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%114 : i64)
  ^bb9(%117: i64):  // 2 preds: ^bb8, ^bb10
    %118 = llvm.icmp "slt" %117, %115 : i64
    llvm.cond_br %118, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %119 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.mlir.constant(4 : index) : i64
    %121 = llvm.mul %102, %120  : i64
    %122 = llvm.mlir.constant(4 : index) : i64
    %123 = llvm.mul %107, %122  : i64
    %124 = llvm.add %121, %123  : i64
    %125 = llvm.mlir.constant(2 : index) : i64
    %126 = llvm.mul %112, %125  : i64
    %127 = llvm.add %124, %126  : i64
    %128 = llvm.add %127, %117  : i64
    %129 = llvm.getelementptr %119[%128] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %130 = llvm.load %129 : !llvm.ptr<i32>
    %131 = llvm.extractvalue %54[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %132 = llvm.mlir.constant(2 : index) : i64
    %133 = llvm.mul %97, %132  : i64
    %134 = llvm.mlir.constant(2 : index) : i64
    %135 = llvm.mul %13, %134  : i64
    %136 = llvm.add %133, %135  : i64
    %137 = llvm.mlir.constant(2 : index) : i64
    %138 = llvm.mul %107, %137  : i64
    %139 = llvm.add %136, %138  : i64
    %140 = llvm.add %139, %112  : i64
    %141 = llvm.add %140, %13  : i64
    %142 = llvm.getelementptr %131[%141] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %143 = llvm.load %142 : !llvm.ptr<i32>
    %144 = llvm.icmp "slt" %130, %143 : i32
    %145 = llvm.select %144, %130, %143 : i1, i32
    %146 = llvm.extractvalue %93[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %147 = llvm.mlir.constant(8 : index) : i64
    %148 = llvm.mul %97, %147  : i64
    %149 = llvm.mlir.constant(4 : index) : i64
    %150 = llvm.mul %102, %149  : i64
    %151 = llvm.add %148, %150  : i64
    %152 = llvm.mlir.constant(4 : index) : i64
    %153 = llvm.mul %107, %152  : i64
    %154 = llvm.add %151, %153  : i64
    %155 = llvm.mlir.constant(2 : index) : i64
    %156 = llvm.mul %112, %155  : i64
    %157 = llvm.add %154, %156  : i64
    %158 = llvm.add %157, %117  : i64
    %159 = llvm.getelementptr %146[%158] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %145, %159 : !llvm.ptr<i32>
    %160 = llvm.add %117, %116  : i64
    llvm.br ^bb9(%160 : i64)
  ^bb11:  // pred: ^bb9
    %161 = llvm.add %112, %111  : i64
    llvm.br ^bb7(%161 : i64)
  ^bb12:  // pred: ^bb7
    %162 = llvm.add %107, %106  : i64
    llvm.br ^bb5(%162 : i64)
  ^bb13:  // pred: ^bb5
    %163 = llvm.add %102, %101  : i64
    llvm.br ^bb3(%163 : i64)
  ^bb14:  // pred: ^bb3
    %164 = llvm.add %97, %96  : i64
    llvm.br ^bb1(%164 : i64)
  ^bb15:  // pred: ^bb1
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.constant(2 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.mlir.constant(2 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.mlir.constant(2 : index) : i64
    %171 = llvm.mlir.constant(4 : index) : i64
    %172 = llvm.mlir.constant(4 : index) : i64
    %173 = llvm.mlir.null : !llvm.ptr<i32>
    %174 = llvm.getelementptr %173[%172] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %175 = llvm.ptrtoint %174 : !llvm.ptr<i32> to i64
    %176 = llvm.mlir.constant(16 : index) : i64
    %177 = llvm.add %175, %176  : i64
    %178 = llvm.call @malloc(%177) : (i64) -> !llvm.ptr<i8>
    %179 = llvm.bitcast %178 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %180 = llvm.ptrtoint %179 : !llvm.ptr<i32> to i64
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.sub %176, %181  : i64
    %183 = llvm.add %180, %182  : i64
    %184 = llvm.urem %183, %176  : i64
    %185 = llvm.sub %183, %184  : i64
    %186 = llvm.inttoptr %185 : i64 to !llvm.ptr<i32>
    %187 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %188 = llvm.insertvalue %179, %187[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.insertvalue %186, %188[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.mlir.constant(0 : index) : i64
    %191 = llvm.insertvalue %190, %189[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.insertvalue %165, %191[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.insertvalue %166, %192[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.insertvalue %167, %193[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.insertvalue %168, %194[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.insertvalue %171, %195[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.insertvalue %170, %196[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.insertvalue %168, %197[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.insertvalue %169, %198[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.mlir.constant(0 : index) : i64
    %201 = llvm.mlir.constant(1 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%200 : i64)
  ^bb16(%203: i64):  // 2 preds: ^bb15, ^bb26
    %204 = llvm.icmp "slt" %203, %201 : i64
    llvm.cond_br %204, ^bb17, ^bb27
  ^bb17:  // pred: ^bb16
    %205 = llvm.mlir.constant(0 : index) : i64
    %206 = llvm.mlir.constant(2 : index) : i64
    %207 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%205 : i64)
  ^bb18(%208: i64):  // 2 preds: ^bb17, ^bb25
    %209 = llvm.icmp "slt" %208, %206 : i64
    llvm.cond_br %209, ^bb19, ^bb26
  ^bb19:  // pred: ^bb18
    %210 = llvm.mlir.constant(0 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%210 : i64)
  ^bb20(%213: i64):  // 2 preds: ^bb19, ^bb24
    %214 = llvm.icmp "slt" %213, %211 : i64
    llvm.cond_br %214, ^bb21, ^bb25
  ^bb21:  // pred: ^bb20
    %215 = llvm.mlir.constant(0 : index) : i64
    %216 = llvm.mlir.constant(2 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%215 : i64)
  ^bb22(%218: i64):  // 2 preds: ^bb21, ^bb23
    %219 = llvm.icmp "slt" %218, %216 : i64
    llvm.cond_br %219, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %220 = llvm.extractvalue %199[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.mlir.constant(4 : index) : i64
    %222 = llvm.mul %203, %221  : i64
    %223 = llvm.mlir.constant(2 : index) : i64
    %224 = llvm.mul %208, %223  : i64
    %225 = llvm.add %222, %224  : i64
    %226 = llvm.mlir.constant(2 : index) : i64
    %227 = llvm.mul %213, %226  : i64
    %228 = llvm.add %225, %227  : i64
    %229 = llvm.add %228, %218  : i64
    %230 = llvm.getelementptr %220[%229] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %12, %230 : !llvm.ptr<i32>
    %231 = llvm.add %218, %217  : i64
    llvm.br ^bb22(%231 : i64)
  ^bb24:  // pred: ^bb22
    %232 = llvm.add %213, %212  : i64
    llvm.br ^bb20(%232 : i64)
  ^bb25:  // pred: ^bb20
    %233 = llvm.add %208, %207  : i64
    llvm.br ^bb18(%233 : i64)
  ^bb26:  // pred: ^bb18
    %234 = llvm.add %203, %202  : i64
    llvm.br ^bb16(%234 : i64)
  ^bb27:  // pred: ^bb16
    %235 = llvm.mlir.constant(0 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%235 : i64)
  ^bb28(%238: i64):  // 2 preds: ^bb27, ^bb41
    %239 = llvm.icmp "slt" %238, %236 : i64
    llvm.cond_br %239, ^bb29, ^bb42
  ^bb29:  // pred: ^bb28
    %240 = llvm.mlir.constant(0 : index) : i64
    %241 = llvm.mlir.constant(2 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%240 : i64)
  ^bb30(%243: i64):  // 2 preds: ^bb29, ^bb40
    %244 = llvm.icmp "slt" %243, %241 : i64
    llvm.cond_br %244, ^bb31, ^bb41
  ^bb31:  // pred: ^bb30
    %245 = llvm.mlir.constant(0 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%245 : i64)
  ^bb32(%248: i64):  // 2 preds: ^bb31, ^bb39
    %249 = llvm.icmp "slt" %248, %246 : i64
    llvm.cond_br %249, ^bb33, ^bb40
  ^bb33:  // pred: ^bb32
    %250 = llvm.mlir.constant(0 : index) : i64
    %251 = llvm.mlir.constant(2 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%250 : i64)
  ^bb34(%253: i64):  // 2 preds: ^bb33, ^bb38
    %254 = llvm.icmp "slt" %253, %251 : i64
    llvm.cond_br %254, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    %255 = llvm.mlir.constant(0 : index) : i64
    %256 = llvm.mlir.constant(2 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%255 : i64)
  ^bb36(%258: i64):  // 2 preds: ^bb35, ^bb37
    %259 = llvm.icmp "slt" %258, %256 : i64
    llvm.cond_br %259, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %260 = llvm.extractvalue %93[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %261 = llvm.mlir.constant(8 : index) : i64
    %262 = llvm.mul %238, %261  : i64
    %263 = llvm.mlir.constant(4 : index) : i64
    %264 = llvm.mul %243, %263  : i64
    %265 = llvm.add %262, %264  : i64
    %266 = llvm.mlir.constant(4 : index) : i64
    %267 = llvm.mul %248, %266  : i64
    %268 = llvm.add %265, %267  : i64
    %269 = llvm.mlir.constant(2 : index) : i64
    %270 = llvm.mul %253, %269  : i64
    %271 = llvm.add %268, %270  : i64
    %272 = llvm.add %271, %258  : i64
    %273 = llvm.getelementptr %260[%272] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %274 = llvm.load %273 : !llvm.ptr<i32>
    %275 = llvm.extractvalue %199[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.mlir.constant(4 : index) : i64
    %277 = llvm.mul %238, %276  : i64
    %278 = llvm.mlir.constant(2 : index) : i64
    %279 = llvm.mul %243, %278  : i64
    %280 = llvm.add %277, %279  : i64
    %281 = llvm.mlir.constant(2 : index) : i64
    %282 = llvm.mul %248, %281  : i64
    %283 = llvm.add %280, %282  : i64
    %284 = llvm.add %283, %258  : i64
    %285 = llvm.getelementptr %275[%284] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %286 = llvm.load %285 : !llvm.ptr<i32>
    %287 = llvm.icmp "sgt" %286, %274 : i32
    %288 = llvm.select %287, %286, %274 : i1, i32
    %289 = llvm.extractvalue %199[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %290 = llvm.mlir.constant(4 : index) : i64
    %291 = llvm.mul %238, %290  : i64
    %292 = llvm.mlir.constant(2 : index) : i64
    %293 = llvm.mul %243, %292  : i64
    %294 = llvm.add %291, %293  : i64
    %295 = llvm.mlir.constant(2 : index) : i64
    %296 = llvm.mul %248, %295  : i64
    %297 = llvm.add %294, %296  : i64
    %298 = llvm.add %297, %258  : i64
    %299 = llvm.getelementptr %289[%298] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %288, %299 : !llvm.ptr<i32>
    %300 = llvm.add %258, %257  : i64
    llvm.br ^bb36(%300 : i64)
  ^bb38:  // pred: ^bb36
    %301 = llvm.add %253, %252  : i64
    llvm.br ^bb34(%301 : i64)
  ^bb39:  // pred: ^bb34
    %302 = llvm.add %248, %247  : i64
    llvm.br ^bb32(%302 : i64)
  ^bb40:  // pred: ^bb32
    %303 = llvm.add %243, %242  : i64
    llvm.br ^bb30(%303 : i64)
  ^bb41:  // pred: ^bb30
    %304 = llvm.add %238, %237  : i64
    llvm.br ^bb28(%304 : i64)
  ^bb42:  // pred: ^bb28
    %305 = llvm.mlir.constant(1 : index) : i64
    %306 = llvm.mlir.constant(2 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    %308 = llvm.mlir.constant(2 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    %310 = llvm.mlir.constant(2 : index) : i64
    %311 = llvm.mlir.constant(4 : index) : i64
    %312 = llvm.mlir.constant(4 : index) : i64
    %313 = llvm.mlir.null : !llvm.ptr<i32>
    %314 = llvm.getelementptr %313[%312] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %315 = llvm.ptrtoint %314 : !llvm.ptr<i32> to i64
    %316 = llvm.mlir.constant(16 : index) : i64
    %317 = llvm.add %315, %316  : i64
    %318 = llvm.call @malloc(%317) : (i64) -> !llvm.ptr<i8>
    %319 = llvm.bitcast %318 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %320 = llvm.ptrtoint %319 : !llvm.ptr<i32> to i64
    %321 = llvm.mlir.constant(1 : index) : i64
    %322 = llvm.sub %316, %321  : i64
    %323 = llvm.add %320, %322  : i64
    %324 = llvm.urem %323, %316  : i64
    %325 = llvm.sub %323, %324  : i64
    %326 = llvm.inttoptr %325 : i64 to !llvm.ptr<i32>
    %327 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %328 = llvm.insertvalue %319, %327[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.insertvalue %326, %328[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %330 = llvm.mlir.constant(0 : index) : i64
    %331 = llvm.insertvalue %330, %329[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.insertvalue %305, %331[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %333 = llvm.insertvalue %306, %332[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %334 = llvm.insertvalue %307, %333[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %335 = llvm.insertvalue %308, %334[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %336 = llvm.insertvalue %311, %335[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %337 = llvm.insertvalue %310, %336[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %338 = llvm.insertvalue %308, %337[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %339 = llvm.insertvalue %309, %338[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.mlir.constant(0 : index) : i64
    %341 = llvm.mlir.constant(1 : index) : i64
    %342 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%340 : i64)
  ^bb43(%343: i64):  // 2 preds: ^bb42, ^bb53
    %344 = llvm.icmp "slt" %343, %341 : i64
    llvm.cond_br %344, ^bb44, ^bb54
  ^bb44:  // pred: ^bb43
    %345 = llvm.mlir.constant(0 : index) : i64
    %346 = llvm.mlir.constant(2 : index) : i64
    %347 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%345 : i64)
  ^bb45(%348: i64):  // 2 preds: ^bb44, ^bb52
    %349 = llvm.icmp "slt" %348, %346 : i64
    llvm.cond_br %349, ^bb46, ^bb53
  ^bb46:  // pred: ^bb45
    %350 = llvm.mlir.constant(0 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%350 : i64)
  ^bb47(%353: i64):  // 2 preds: ^bb46, ^bb51
    %354 = llvm.icmp "slt" %353, %351 : i64
    llvm.cond_br %354, ^bb48, ^bb52
  ^bb48:  // pred: ^bb47
    %355 = llvm.mlir.constant(0 : index) : i64
    %356 = llvm.mlir.constant(2 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%355 : i64)
  ^bb49(%358: i64):  // 2 preds: ^bb48, ^bb50
    %359 = llvm.icmp "slt" %358, %356 : i64
    llvm.cond_br %359, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %360 = llvm.extractvalue %199[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.mlir.constant(4 : index) : i64
    %362 = llvm.mul %343, %361  : i64
    %363 = llvm.mlir.constant(2 : index) : i64
    %364 = llvm.mul %348, %363  : i64
    %365 = llvm.add %362, %364  : i64
    %366 = llvm.mlir.constant(2 : index) : i64
    %367 = llvm.mul %353, %366  : i64
    %368 = llvm.add %365, %367  : i64
    %369 = llvm.add %368, %358  : i64
    %370 = llvm.getelementptr %360[%369] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %371 = llvm.load %370 : !llvm.ptr<i32>
    %372 = llvm.extractvalue %339[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.mlir.constant(4 : index) : i64
    %374 = llvm.mul %343, %373  : i64
    %375 = llvm.mlir.constant(2 : index) : i64
    %376 = llvm.mul %348, %375  : i64
    %377 = llvm.add %374, %376  : i64
    %378 = llvm.mlir.constant(2 : index) : i64
    %379 = llvm.mul %353, %378  : i64
    %380 = llvm.add %377, %379  : i64
    %381 = llvm.add %380, %358  : i64
    %382 = llvm.getelementptr %372[%381] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %371, %382 : !llvm.ptr<i32>
    %383 = llvm.add %358, %357  : i64
    llvm.br ^bb49(%383 : i64)
  ^bb51:  // pred: ^bb49
    %384 = llvm.add %353, %352  : i64
    llvm.br ^bb47(%384 : i64)
  ^bb52:  // pred: ^bb47
    %385 = llvm.add %348, %347  : i64
    llvm.br ^bb45(%385 : i64)
  ^bb53:  // pred: ^bb45
    %386 = llvm.add %343, %342  : i64
    llvm.br ^bb43(%386 : i64)
  ^bb54:  // pred: ^bb43
    %387 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %388 = llvm.extractvalue %339[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %389 = llvm.extractvalue %339[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %390 = llvm.insertvalue %388, %387[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %391 = llvm.insertvalue %389, %390[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %392 = llvm.mlir.constant(0 : index) : i64
    %393 = llvm.insertvalue %392, %391[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %394 = llvm.mlir.constant(1 : index) : i64
    %395 = llvm.insertvalue %394, %393[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %396 = llvm.mlir.constant(4 : index) : i64
    %397 = llvm.insertvalue %396, %395[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %398 = llvm.mlir.constant(2 : index) : i64
    %399 = llvm.insertvalue %398, %397[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %400 = llvm.mlir.constant(2 : index) : i64
    %401 = llvm.insertvalue %400, %399[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %402 = llvm.mlir.constant(2 : index) : i64
    %403 = llvm.insertvalue %402, %401[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %404 = llvm.mlir.constant(1 : index) : i64
    %405 = llvm.insertvalue %404, %403[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %406 = llvm.mlir.constant(1 : index) : i64
    %407 = llvm.mlir.constant(2 : index) : i64
    %408 = llvm.mlir.constant(2 : index) : i64
    %409 = llvm.mlir.constant(1 : index) : i64
    %410 = llvm.mlir.constant(4 : index) : i64
    %411 = llvm.mlir.constant(4 : index) : i64
    %412 = llvm.mlir.null : !llvm.ptr<i32>
    %413 = llvm.getelementptr %412[%411] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %414 = llvm.ptrtoint %413 : !llvm.ptr<i32> to i64
    %415 = llvm.mlir.constant(16 : index) : i64
    %416 = llvm.add %414, %415  : i64
    %417 = llvm.call @malloc(%416) : (i64) -> !llvm.ptr<i8>
    %418 = llvm.bitcast %417 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %419 = llvm.ptrtoint %418 : !llvm.ptr<i32> to i64
    %420 = llvm.mlir.constant(1 : index) : i64
    %421 = llvm.sub %415, %420  : i64
    %422 = llvm.add %419, %421  : i64
    %423 = llvm.urem %422, %415  : i64
    %424 = llvm.sub %422, %423  : i64
    %425 = llvm.inttoptr %424 : i64 to !llvm.ptr<i32>
    %426 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %427 = llvm.insertvalue %418, %426[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %428 = llvm.insertvalue %425, %427[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %429 = llvm.mlir.constant(0 : index) : i64
    %430 = llvm.insertvalue %429, %428[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %431 = llvm.insertvalue %406, %430[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %432 = llvm.insertvalue %407, %431[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %433 = llvm.insertvalue %408, %432[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %434 = llvm.insertvalue %410, %433[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %435 = llvm.insertvalue %408, %434[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %436 = llvm.insertvalue %409, %435[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %437 = llvm.mlir.constant(0 : index) : i64
    %438 = llvm.mlir.constant(1 : index) : i64
    %439 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%437 : i64)
  ^bb55(%440: i64):  // 2 preds: ^bb54, ^bb62
    %441 = llvm.icmp "slt" %440, %438 : i64
    llvm.cond_br %441, ^bb56, ^bb63
  ^bb56:  // pred: ^bb55
    %442 = llvm.mlir.constant(0 : index) : i64
    %443 = llvm.mlir.constant(2 : index) : i64
    %444 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%442 : i64)
  ^bb57(%445: i64):  // 2 preds: ^bb56, ^bb61
    %446 = llvm.icmp "slt" %445, %443 : i64
    llvm.cond_br %446, ^bb58, ^bb62
  ^bb58:  // pred: ^bb57
    %447 = llvm.mlir.constant(0 : index) : i64
    %448 = llvm.mlir.constant(2 : index) : i64
    %449 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%447 : i64)
  ^bb59(%450: i64):  // 2 preds: ^bb58, ^bb60
    %451 = llvm.icmp "slt" %450, %448 : i64
    llvm.cond_br %451, ^bb60, ^bb61
  ^bb60:  // pred: ^bb59
    %452 = llvm.extractvalue %405[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %453 = llvm.mlir.constant(4 : index) : i64
    %454 = llvm.mul %440, %453  : i64
    %455 = llvm.mlir.constant(2 : index) : i64
    %456 = llvm.mul %445, %455  : i64
    %457 = llvm.add %454, %456  : i64
    %458 = llvm.add %457, %450  : i64
    %459 = llvm.getelementptr %452[%458] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %460 = llvm.load %459 : !llvm.ptr<i32>
    %461 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %462 = llvm.load %461 : !llvm.ptr<i32>
    %463 = llvm.icmp "slt" %460, %462 : i32
    %464 = llvm.select %463, %462, %460 : i1, i32
    %465 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %466 = llvm.load %465 : !llvm.ptr<i32>
    %467 = llvm.icmp "slt" %464, %466 : i32
    %468 = llvm.select %467, %464, %466 : i1, i32
    %469 = llvm.extractvalue %436[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %470 = llvm.mlir.constant(4 : index) : i64
    %471 = llvm.mul %440, %470  : i64
    %472 = llvm.mlir.constant(2 : index) : i64
    %473 = llvm.mul %445, %472  : i64
    %474 = llvm.add %471, %473  : i64
    %475 = llvm.add %474, %450  : i64
    %476 = llvm.getelementptr %469[%475] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %468, %476 : !llvm.ptr<i32>
    %477 = llvm.add %450, %449  : i64
    llvm.br ^bb59(%477 : i64)
  ^bb61:  // pred: ^bb59
    %478 = llvm.add %445, %444  : i64
    llvm.br ^bb57(%478 : i64)
  ^bb62:  // pred: ^bb57
    %479 = llvm.add %440, %439  : i64
    llvm.br ^bb55(%479 : i64)
  ^bb63:  // pred: ^bb55
    llvm.return %436 : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v6_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %45 = llvm.mlir.constant(1 : i64) : i64
    %46 = llvm.mlir.constant(8 : i64) : i64
    %47 = llvm.call @malloc(%46) : (i64) -> !llvm.ptr<i8>
    %48 = llvm.bitcast %47 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %49 = llvm.mlir.constant(3 : i64) : i64
    %50 = llvm.call @omTensorCreateUntyped(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.mlir.constant(1 : i64) : i64
    %52 = llvm.extractvalue %44[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %53 = llvm.bitcast %52 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %54 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%50, %51, %53, %55) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %56 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%50, %56) : (!llvm.ptr<i8>, i64) -> ()
    %57 = llvm.call @omTensorGetShape(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %58 = llvm.call @omTensorGetStrides(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %59 = llvm.mlir.constant(0 : i64) : i64
    %60 = llvm.extractvalue %44[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %61 = llvm.getelementptr %57[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %60, %61 : !llvm.ptr<i64>
    %62 = llvm.extractvalue %44[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.getelementptr %58[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.extractvalue %44[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %66 = llvm.getelementptr %57[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.extractvalue %44[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.getelementptr %58[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.mlir.constant(2 : i64) : i64
    %70 = llvm.extractvalue %44[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %71 = llvm.getelementptr %57[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.extractvalue %44[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.getelementptr %58[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.mlir.constant(0 : i64) : i64
    %75 = llvm.getelementptr %48[%74] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %50, %75 : !llvm.ptr<ptr<i8>>
    %76 = llvm.call @omTensorListCreate(%48, %45, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %76 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<67 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<67 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

