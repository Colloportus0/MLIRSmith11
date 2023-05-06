module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 8] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_1(dense<[[[[5, 6], [5, 4]], [[4, 6], [3, 5]]], [[[4, 4], [4, 3]], [[6, 6], [7, 4]]]]> : tensor<2x2x2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<2 x array<2 x array<2 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v0_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.insertvalue %arg8, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.insertvalue %arg9, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.insertvalue %arg10, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %arg11, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.mlir.constant(-2147483648 : i32) : i32
    %15 = llvm.mlir.constant(0 : i32) : i32
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<2 x array<2 x array<2 x array<2 x i32>>>>>
    %18 = llvm.bitcast %17 : !llvm.ptr<array<2 x array<2 x array<2 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %19 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %20 = llvm.insertvalue %18, %19[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %18, %20[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.insertvalue %22, %21[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.constant(2 : index) : i64
    %25 = llvm.insertvalue %24, %23[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.mlir.constant(8 : index) : i64
    %27 = llvm.insertvalue %26, %25[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.mlir.constant(2 : index) : i64
    %29 = llvm.insertvalue %28, %27[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(4 : index) : i64
    %31 = llvm.insertvalue %30, %29[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(2 : index) : i64
    %33 = llvm.insertvalue %32, %31[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.mlir.constant(2 : index) : i64
    %35 = llvm.insertvalue %34, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(2 : index) : i64
    %37 = llvm.insertvalue %36, %35[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.insertvalue %38, %37[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.mlir.constant(2 : index) : i64
    %42 = llvm.mlir.constant(2 : index) : i64
    %43 = llvm.mlir.constant(2 : index) : i64
    %44 = llvm.mlir.constant(2 : index) : i64
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.mlir.constant(4 : index) : i64
    %47 = llvm.mlir.constant(8 : index) : i64
    %48 = llvm.mlir.constant(16 : index) : i64
    %49 = llvm.mlir.constant(16 : index) : i64
    %50 = llvm.mlir.null : !llvm.ptr<i32>
    %51 = llvm.getelementptr %50[%49] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %52 = llvm.ptrtoint %51 : !llvm.ptr<i32> to i64
    %53 = llvm.mlir.constant(16 : index) : i64
    %54 = llvm.add %52, %53  : i64
    %55 = llvm.call @malloc(%54) : (i64) -> !llvm.ptr<i8>
    %56 = llvm.bitcast %55 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %57 = llvm.ptrtoint %56 : !llvm.ptr<i32> to i64
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.sub %53, %58  : i64
    %60 = llvm.add %57, %59  : i64
    %61 = llvm.urem %60, %53  : i64
    %62 = llvm.sub %60, %61  : i64
    %63 = llvm.inttoptr %62 : i64 to !llvm.ptr<i32>
    %64 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %65 = llvm.insertvalue %56, %64[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %66 = llvm.insertvalue %63, %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.insertvalue %67, %66[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %69 = llvm.insertvalue %40, %68[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %70 = llvm.insertvalue %41, %69[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %71 = llvm.insertvalue %42, %70[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %72 = llvm.insertvalue %43, %71[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %73 = llvm.insertvalue %44, %72[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %74 = llvm.insertvalue %48, %73[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %75 = llvm.insertvalue %47, %74[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %76 = llvm.insertvalue %46, %75[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %77 = llvm.insertvalue %44, %76[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %78 = llvm.insertvalue %45, %77[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %79 = llvm.mlir.constant(0 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%79 : i64)
  ^bb1(%82: i64):  // 2 preds: ^bb0, ^bb14
    %83 = llvm.icmp "slt" %82, %80 : i64
    llvm.cond_br %83, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %84 = llvm.mlir.constant(0 : index) : i64
    %85 = llvm.mlir.constant(2 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%84 : i64)
  ^bb3(%87: i64):  // 2 preds: ^bb2, ^bb13
    %88 = llvm.icmp "slt" %87, %85 : i64
    llvm.cond_br %88, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = llvm.mlir.constant(2 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%89 : i64)
  ^bb5(%92: i64):  // 2 preds: ^bb4, ^bb12
    %93 = llvm.icmp "slt" %92, %90 : i64
    llvm.cond_br %93, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    %94 = llvm.mlir.constant(0 : index) : i64
    %95 = llvm.mlir.constant(2 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%94 : i64)
  ^bb7(%97: i64):  // 2 preds: ^bb6, ^bb11
    %98 = llvm.icmp "slt" %97, %95 : i64
    llvm.cond_br %98, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %99 = llvm.mlir.constant(0 : index) : i64
    %100 = llvm.mlir.constant(2 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%99 : i64)
  ^bb9(%102: i64):  // 2 preds: ^bb8, ^bb10
    %103 = llvm.icmp "slt" %102, %100 : i64
    llvm.cond_br %103, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %104 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %105 = llvm.mlir.constant(8 : index) : i64
    %106 = llvm.mul %82, %105  : i64
    %107 = llvm.mlir.constant(8 : index) : i64
    %108 = llvm.mul %16, %107  : i64
    %109 = llvm.add %106, %108  : i64
    %110 = llvm.mlir.constant(4 : index) : i64
    %111 = llvm.mul %92, %110  : i64
    %112 = llvm.add %109, %111  : i64
    %113 = llvm.mlir.constant(2 : index) : i64
    %114 = llvm.mul %97, %113  : i64
    %115 = llvm.add %112, %114  : i64
    %116 = llvm.add %115, %102  : i64
    %117 = llvm.getelementptr %104[%116] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %118 = llvm.load %117 : !llvm.ptr<i32>
    %119 = llvm.extractvalue %39[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.mlir.constant(8 : index) : i64
    %121 = llvm.mul %87, %120  : i64
    %122 = llvm.mlir.constant(4 : index) : i64
    %123 = llvm.mul %92, %122  : i64
    %124 = llvm.add %121, %123  : i64
    %125 = llvm.mlir.constant(2 : index) : i64
    %126 = llvm.mul %97, %125  : i64
    %127 = llvm.add %124, %126  : i64
    %128 = llvm.add %127, %102  : i64
    %129 = llvm.getelementptr %119[%128] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %130 = llvm.load %129 : !llvm.ptr<i32>
    %131 = llvm.mul %118, %130  : i32
    %132 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %133 = llvm.mlir.constant(16 : index) : i64
    %134 = llvm.mul %82, %133  : i64
    %135 = llvm.mlir.constant(8 : index) : i64
    %136 = llvm.mul %87, %135  : i64
    %137 = llvm.add %134, %136  : i64
    %138 = llvm.mlir.constant(4 : index) : i64
    %139 = llvm.mul %92, %138  : i64
    %140 = llvm.add %137, %139  : i64
    %141 = llvm.mlir.constant(2 : index) : i64
    %142 = llvm.mul %97, %141  : i64
    %143 = llvm.add %140, %142  : i64
    %144 = llvm.add %143, %102  : i64
    %145 = llvm.getelementptr %132[%144] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %131, %145 : !llvm.ptr<i32>
    %146 = llvm.add %102, %101  : i64
    llvm.br ^bb9(%146 : i64)
  ^bb11:  // pred: ^bb9
    %147 = llvm.add %97, %96  : i64
    llvm.br ^bb7(%147 : i64)
  ^bb12:  // pred: ^bb7
    %148 = llvm.add %92, %91  : i64
    llvm.br ^bb5(%148 : i64)
  ^bb13:  // pred: ^bb5
    %149 = llvm.add %87, %86  : i64
    llvm.br ^bb3(%149 : i64)
  ^bb14:  // pred: ^bb3
    %150 = llvm.add %82, %81  : i64
    llvm.br ^bb1(%150 : i64)
  ^bb15:  // pred: ^bb1
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.mlir.constant(2 : index) : i64
    %153 = llvm.mlir.constant(2 : index) : i64
    %154 = llvm.mlir.constant(2 : index) : i64
    %155 = llvm.mlir.constant(2 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.mlir.constant(4 : index) : i64
    %158 = llvm.mlir.constant(8 : index) : i64
    %159 = llvm.mlir.constant(16 : index) : i64
    %160 = llvm.mlir.constant(16 : index) : i64
    %161 = llvm.mlir.null : !llvm.ptr<i32>
    %162 = llvm.getelementptr %161[%160] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %163 = llvm.ptrtoint %162 : !llvm.ptr<i32> to i64
    %164 = llvm.mlir.constant(16 : index) : i64
    %165 = llvm.add %163, %164  : i64
    %166 = llvm.call @malloc(%165) : (i64) -> !llvm.ptr<i8>
    %167 = llvm.bitcast %166 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %168 = llvm.ptrtoint %167 : !llvm.ptr<i32> to i64
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.sub %164, %169  : i64
    %171 = llvm.add %168, %170  : i64
    %172 = llvm.urem %171, %164  : i64
    %173 = llvm.sub %171, %172  : i64
    %174 = llvm.inttoptr %173 : i64 to !llvm.ptr<i32>
    %175 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %176 = llvm.insertvalue %167, %175[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %177 = llvm.insertvalue %174, %176[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %178 = llvm.mlir.constant(0 : index) : i64
    %179 = llvm.insertvalue %178, %177[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %180 = llvm.insertvalue %151, %179[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %181 = llvm.insertvalue %152, %180[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %182 = llvm.insertvalue %153, %181[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %183 = llvm.insertvalue %154, %182[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %184 = llvm.insertvalue %155, %183[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %185 = llvm.insertvalue %159, %184[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %186 = llvm.insertvalue %158, %185[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %187 = llvm.insertvalue %157, %186[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %188 = llvm.insertvalue %155, %187[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %189 = llvm.insertvalue %156, %188[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %190 = llvm.mlir.constant(0 : index) : i64
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%190 : i64)
  ^bb16(%193: i64):  // 2 preds: ^bb15, ^bb29
    %194 = llvm.icmp "slt" %193, %191 : i64
    llvm.cond_br %194, ^bb17, ^bb30
  ^bb17:  // pred: ^bb16
    %195 = llvm.mlir.constant(0 : index) : i64
    %196 = llvm.mlir.constant(2 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%195 : i64)
  ^bb18(%198: i64):  // 2 preds: ^bb17, ^bb28
    %199 = llvm.icmp "slt" %198, %196 : i64
    llvm.cond_br %199, ^bb19, ^bb29
  ^bb19:  // pred: ^bb18
    %200 = llvm.mlir.constant(0 : index) : i64
    %201 = llvm.mlir.constant(2 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%200 : i64)
  ^bb20(%203: i64):  // 2 preds: ^bb19, ^bb27
    %204 = llvm.icmp "slt" %203, %201 : i64
    llvm.cond_br %204, ^bb21, ^bb28
  ^bb21:  // pred: ^bb20
    %205 = llvm.mlir.constant(0 : index) : i64
    %206 = llvm.mlir.constant(2 : index) : i64
    %207 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%205 : i64)
  ^bb22(%208: i64):  // 2 preds: ^bb21, ^bb26
    %209 = llvm.icmp "slt" %208, %206 : i64
    llvm.cond_br %209, ^bb23, ^bb27
  ^bb23:  // pred: ^bb22
    %210 = llvm.mlir.constant(0 : index) : i64
    %211 = llvm.mlir.constant(2 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%210 : i64)
  ^bb24(%213: i64):  // 2 preds: ^bb23, ^bb25
    %214 = llvm.icmp "slt" %213, %211 : i64
    llvm.cond_br %214, ^bb25, ^bb26
  ^bb25:  // pred: ^bb24
    %215 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %216 = llvm.mlir.constant(16 : index) : i64
    %217 = llvm.mul %193, %216  : i64
    %218 = llvm.mlir.constant(8 : index) : i64
    %219 = llvm.mul %198, %218  : i64
    %220 = llvm.add %217, %219  : i64
    %221 = llvm.mlir.constant(4 : index) : i64
    %222 = llvm.mul %203, %221  : i64
    %223 = llvm.add %220, %222  : i64
    %224 = llvm.mlir.constant(2 : index) : i64
    %225 = llvm.mul %208, %224  : i64
    %226 = llvm.add %223, %225  : i64
    %227 = llvm.add %226, %213  : i64
    %228 = llvm.getelementptr %215[%227] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %229 = llvm.load %228 : !llvm.ptr<i32>
    %230 = llvm.sub %15, %229  : i32
    %231 = llvm.extractvalue %189[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %232 = llvm.mlir.constant(16 : index) : i64
    %233 = llvm.mul %193, %232  : i64
    %234 = llvm.mlir.constant(8 : index) : i64
    %235 = llvm.mul %198, %234  : i64
    %236 = llvm.add %233, %235  : i64
    %237 = llvm.mlir.constant(4 : index) : i64
    %238 = llvm.mul %203, %237  : i64
    %239 = llvm.add %236, %238  : i64
    %240 = llvm.mlir.constant(2 : index) : i64
    %241 = llvm.mul %208, %240  : i64
    %242 = llvm.add %239, %241  : i64
    %243 = llvm.add %242, %213  : i64
    %244 = llvm.getelementptr %231[%243] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %230, %244 : !llvm.ptr<i32>
    %245 = llvm.add %213, %212  : i64
    llvm.br ^bb24(%245 : i64)
  ^bb26:  // pred: ^bb24
    %246 = llvm.add %208, %207  : i64
    llvm.br ^bb22(%246 : i64)
  ^bb27:  // pred: ^bb22
    %247 = llvm.add %203, %202  : i64
    llvm.br ^bb20(%247 : i64)
  ^bb28:  // pred: ^bb20
    %248 = llvm.add %198, %197  : i64
    llvm.br ^bb18(%248 : i64)
  ^bb29:  // pred: ^bb18
    %249 = llvm.add %193, %192  : i64
    llvm.br ^bb16(%249 : i64)
  ^bb30:  // pred: ^bb16
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.mlir.constant(2 : index) : i64
    %252 = llvm.mlir.constant(2 : index) : i64
    %253 = llvm.mlir.constant(2 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.mlir.constant(4 : index) : i64
    %256 = llvm.mlir.constant(8 : index) : i64
    %257 = llvm.mlir.constant(8 : index) : i64
    %258 = llvm.mlir.null : !llvm.ptr<i32>
    %259 = llvm.getelementptr %258[%257] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %260 = llvm.ptrtoint %259 : !llvm.ptr<i32> to i64
    %261 = llvm.mlir.constant(16 : index) : i64
    %262 = llvm.add %260, %261  : i64
    %263 = llvm.call @malloc(%262) : (i64) -> !llvm.ptr<i8>
    %264 = llvm.bitcast %263 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %265 = llvm.ptrtoint %264 : !llvm.ptr<i32> to i64
    %266 = llvm.mlir.constant(1 : index) : i64
    %267 = llvm.sub %261, %266  : i64
    %268 = llvm.add %265, %267  : i64
    %269 = llvm.urem %268, %261  : i64
    %270 = llvm.sub %268, %269  : i64
    %271 = llvm.inttoptr %270 : i64 to !llvm.ptr<i32>
    %272 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %273 = llvm.insertvalue %264, %272[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.insertvalue %271, %273[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.mlir.constant(0 : index) : i64
    %276 = llvm.insertvalue %275, %274[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.insertvalue %250, %276[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.insertvalue %251, %277[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.insertvalue %252, %278[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.insertvalue %253, %279[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.insertvalue %256, %280[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.insertvalue %255, %281[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %283 = llvm.insertvalue %253, %282[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %284 = llvm.insertvalue %254, %283[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %285 = llvm.mlir.constant(0 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%285 : i64)
  ^bb31(%288: i64):  // 2 preds: ^bb30, ^bb41
    %289 = llvm.icmp "slt" %288, %286 : i64
    llvm.cond_br %289, ^bb32, ^bb42
  ^bb32:  // pred: ^bb31
    %290 = llvm.mlir.constant(0 : index) : i64
    %291 = llvm.mlir.constant(2 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%290 : i64)
  ^bb33(%293: i64):  // 2 preds: ^bb32, ^bb40
    %294 = llvm.icmp "slt" %293, %291 : i64
    llvm.cond_br %294, ^bb34, ^bb41
  ^bb34:  // pred: ^bb33
    %295 = llvm.mlir.constant(0 : index) : i64
    %296 = llvm.mlir.constant(2 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb35(%295 : i64)
  ^bb35(%298: i64):  // 2 preds: ^bb34, ^bb39
    %299 = llvm.icmp "slt" %298, %296 : i64
    llvm.cond_br %299, ^bb36, ^bb40
  ^bb36:  // pred: ^bb35
    %300 = llvm.mlir.constant(0 : index) : i64
    %301 = llvm.mlir.constant(2 : index) : i64
    %302 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%300 : i64)
  ^bb37(%303: i64):  // 2 preds: ^bb36, ^bb38
    %304 = llvm.icmp "slt" %303, %301 : i64
    llvm.cond_br %304, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %305 = llvm.extractvalue %284[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.mlir.constant(8 : index) : i64
    %307 = llvm.mul %288, %306  : i64
    %308 = llvm.mlir.constant(4 : index) : i64
    %309 = llvm.mul %293, %308  : i64
    %310 = llvm.add %307, %309  : i64
    %311 = llvm.mlir.constant(2 : index) : i64
    %312 = llvm.mul %298, %311  : i64
    %313 = llvm.add %310, %312  : i64
    %314 = llvm.add %313, %303  : i64
    %315 = llvm.getelementptr %305[%314] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %14, %315 : !llvm.ptr<i32>
    %316 = llvm.add %303, %302  : i64
    llvm.br ^bb37(%316 : i64)
  ^bb39:  // pred: ^bb37
    %317 = llvm.add %298, %297  : i64
    llvm.br ^bb35(%317 : i64)
  ^bb40:  // pred: ^bb35
    %318 = llvm.add %293, %292  : i64
    llvm.br ^bb33(%318 : i64)
  ^bb41:  // pred: ^bb33
    %319 = llvm.add %288, %287  : i64
    llvm.br ^bb31(%319 : i64)
  ^bb42:  // pred: ^bb31
    %320 = llvm.mlir.constant(0 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    %322 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%320 : i64)
  ^bb43(%323: i64):  // 2 preds: ^bb42, ^bb56
    %324 = llvm.icmp "slt" %323, %321 : i64
    llvm.cond_br %324, ^bb44, ^bb57
  ^bb44:  // pred: ^bb43
    %325 = llvm.mlir.constant(0 : index) : i64
    %326 = llvm.mlir.constant(2 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%325 : i64)
  ^bb45(%328: i64):  // 2 preds: ^bb44, ^bb55
    %329 = llvm.icmp "slt" %328, %326 : i64
    llvm.cond_br %329, ^bb46, ^bb56
  ^bb46:  // pred: ^bb45
    %330 = llvm.mlir.constant(0 : index) : i64
    %331 = llvm.mlir.constant(2 : index) : i64
    %332 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%330 : i64)
  ^bb47(%333: i64):  // 2 preds: ^bb46, ^bb54
    %334 = llvm.icmp "slt" %333, %331 : i64
    llvm.cond_br %334, ^bb48, ^bb55
  ^bb48:  // pred: ^bb47
    %335 = llvm.mlir.constant(0 : index) : i64
    %336 = llvm.mlir.constant(2 : index) : i64
    %337 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%335 : i64)
  ^bb49(%338: i64):  // 2 preds: ^bb48, ^bb53
    %339 = llvm.icmp "slt" %338, %336 : i64
    llvm.cond_br %339, ^bb50, ^bb54
  ^bb50:  // pred: ^bb49
    %340 = llvm.mlir.constant(0 : index) : i64
    %341 = llvm.mlir.constant(2 : index) : i64
    %342 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%340 : i64)
  ^bb51(%343: i64):  // 2 preds: ^bb50, ^bb52
    %344 = llvm.icmp "slt" %343, %341 : i64
    llvm.cond_br %344, ^bb52, ^bb53
  ^bb52:  // pred: ^bb51
    %345 = llvm.extractvalue %189[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %346 = llvm.mlir.constant(16 : index) : i64
    %347 = llvm.mul %323, %346  : i64
    %348 = llvm.mlir.constant(8 : index) : i64
    %349 = llvm.mul %328, %348  : i64
    %350 = llvm.add %347, %349  : i64
    %351 = llvm.mlir.constant(4 : index) : i64
    %352 = llvm.mul %333, %351  : i64
    %353 = llvm.add %350, %352  : i64
    %354 = llvm.mlir.constant(2 : index) : i64
    %355 = llvm.mul %338, %354  : i64
    %356 = llvm.add %353, %355  : i64
    %357 = llvm.add %356, %343  : i64
    %358 = llvm.getelementptr %345[%357] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %359 = llvm.load %358 : !llvm.ptr<i32>
    %360 = llvm.extractvalue %284[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.mlir.constant(8 : index) : i64
    %362 = llvm.mul %323, %361  : i64
    %363 = llvm.mlir.constant(4 : index) : i64
    %364 = llvm.mul %328, %363  : i64
    %365 = llvm.add %362, %364  : i64
    %366 = llvm.mlir.constant(2 : index) : i64
    %367 = llvm.mul %333, %366  : i64
    %368 = llvm.add %365, %367  : i64
    %369 = llvm.add %368, %338  : i64
    %370 = llvm.getelementptr %360[%369] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %371 = llvm.load %370 : !llvm.ptr<i32>
    %372 = llvm.icmp "sgt" %371, %359 : i32
    %373 = llvm.select %372, %371, %359 : i1, i32
    %374 = llvm.extractvalue %284[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %375 = llvm.mlir.constant(8 : index) : i64
    %376 = llvm.mul %323, %375  : i64
    %377 = llvm.mlir.constant(4 : index) : i64
    %378 = llvm.mul %328, %377  : i64
    %379 = llvm.add %376, %378  : i64
    %380 = llvm.mlir.constant(2 : index) : i64
    %381 = llvm.mul %333, %380  : i64
    %382 = llvm.add %379, %381  : i64
    %383 = llvm.add %382, %338  : i64
    %384 = llvm.getelementptr %374[%383] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %373, %384 : !llvm.ptr<i32>
    %385 = llvm.add %343, %342  : i64
    llvm.br ^bb51(%385 : i64)
  ^bb53:  // pred: ^bb51
    %386 = llvm.add %338, %337  : i64
    llvm.br ^bb49(%386 : i64)
  ^bb54:  // pred: ^bb49
    %387 = llvm.add %333, %332  : i64
    llvm.br ^bb47(%387 : i64)
  ^bb55:  // pred: ^bb47
    %388 = llvm.add %328, %327  : i64
    llvm.br ^bb45(%388 : i64)
  ^bb56:  // pred: ^bb45
    %389 = llvm.add %323, %322  : i64
    llvm.br ^bb43(%389 : i64)
  ^bb57:  // pred: ^bb43
    %390 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %391 = llvm.extractvalue %284[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %392 = llvm.extractvalue %284[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %393 = llvm.insertvalue %391, %390[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %394 = llvm.insertvalue %392, %393[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %395 = llvm.mlir.constant(0 : index) : i64
    %396 = llvm.insertvalue %395, %394[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %397 = llvm.mlir.constant(1 : index) : i64
    %398 = llvm.insertvalue %397, %396[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %399 = llvm.mlir.constant(8 : index) : i64
    %400 = llvm.insertvalue %399, %398[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %401 = llvm.mlir.constant(8 : index) : i64
    %402 = llvm.insertvalue %401, %400[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.insertvalue %403, %402[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.return %404 : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v0_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.extractvalue %0[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.extractvalue %0[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    llvm.store %14, %arg0 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %44 = llvm.mlir.constant(4 : i64) : i64
    %45 = llvm.getelementptr %14[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %46 = llvm.load %45 : !llvm.ptr<i64>
    %47 = llvm.insertvalue %46, %43[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.getelementptr %15[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %49 = llvm.load %48 : !llvm.ptr<i64>
    %50 = llvm.insertvalue %49, %47[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %50, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %51 = llvm.load %2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %52 = llvm.mlir.constant(1 : i64) : i64
    %53 = llvm.mlir.constant(8 : i64) : i64
    %54 = llvm.call @malloc(%53) : (i64) -> !llvm.ptr<i8>
    %55 = llvm.bitcast %54 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %56 = llvm.mlir.constant(2 : i64) : i64
    %57 = llvm.call @omTensorCreateUntyped(%56) : (i64) -> !llvm.ptr<i8>
    %58 = llvm.mlir.constant(1 : i64) : i64
    %59 = llvm.extractvalue %51[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.bitcast %59 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %61 = llvm.extractvalue %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %62 = llvm.bitcast %61 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%57, %58, %60, %62) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %63 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%57, %63) : (!llvm.ptr<i8>, i64) -> ()
    %64 = llvm.call @omTensorGetShape(%57) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %65 = llvm.call @omTensorGetStrides(%57) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %66 = llvm.mlir.constant(0 : i64) : i64
    %67 = llvm.extractvalue %51[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.getelementptr %64[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %51[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %70 = llvm.getelementptr %65[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(1 : i64) : i64
    %72 = llvm.extractvalue %51[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %73 = llvm.getelementptr %64[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %51[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.getelementptr %65[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(0 : i64) : i64
    %77 = llvm.getelementptr %55[%76] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %57, %77 : !llvm.ptr<ptr<i8>>
    %78 = llvm.call @omTensorListCreate(%55, %52, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %78 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<76 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<76 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<63 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<63 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

