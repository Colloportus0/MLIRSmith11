module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<4> : tensor<1x1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x array<1 x i32>>>>>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64) -> !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v1_0"]} {
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
    %28 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x array<1 x i32>>>>>>
    %29 = llvm.bitcast %28 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x array<1 x i32>>>>>> to !llvm.ptr<i32>
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %31 = llvm.insertvalue %29, %30[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.insertvalue %33, %32[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.insertvalue %35, %34[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.insertvalue %37, %36[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.insertvalue %39, %38[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.insertvalue %41, %40[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.insertvalue %45, %44[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.insertvalue %47, %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.insertvalue %49, %48[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.insertvalue %51, %50[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.insertvalue %53, %52[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.mlir.null : !llvm.ptr<i32>
    %62 = llvm.getelementptr %61[%55] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %63 = llvm.ptrtoint %62 : !llvm.ptr<i32> to i64
    %64 = llvm.mlir.constant(16 : index) : i64
    %65 = llvm.add %63, %64  : i64
    %66 = llvm.call @malloc(%65) : (i64) -> !llvm.ptr<i8>
    %67 = llvm.bitcast %66 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %68 = llvm.ptrtoint %67 : !llvm.ptr<i32> to i64
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.sub %64, %69  : i64
    %71 = llvm.add %68, %70  : i64
    %72 = llvm.urem %71, %64  : i64
    %73 = llvm.sub %71, %72  : i64
    %74 = llvm.inttoptr %73 : i64 to !llvm.ptr<i32>
    %75 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %76 = llvm.insertvalue %67, %75[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %77 = llvm.insertvalue %74, %76[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %78 = llvm.mlir.constant(0 : index) : i64
    %79 = llvm.insertvalue %78, %77[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %80 = llvm.insertvalue %55, %79[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %81 = llvm.insertvalue %56, %80[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %82 = llvm.insertvalue %57, %81[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %83 = llvm.insertvalue %58, %82[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %84 = llvm.insertvalue %59, %83[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %85 = llvm.insertvalue %56, %84[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %86 = llvm.insertvalue %57, %85[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %87 = llvm.insertvalue %58, %86[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %88 = llvm.insertvalue %59, %87[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %89 = llvm.insertvalue %60, %88[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %90 = llvm.mlir.constant(0 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%90 : i64)
  ^bb1(%93: i64):  // 2 preds: ^bb0, ^bb14
    %94 = llvm.icmp "slt" %93, %91 : i64
    llvm.cond_br %94, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %95 = llvm.mlir.constant(0 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%95 : i64)
  ^bb3(%98: i64):  // 2 preds: ^bb2, ^bb13
    %99 = llvm.icmp "slt" %98, %96 : i64
    llvm.cond_br %99, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %100 = llvm.mlir.constant(0 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%100 : i64)
  ^bb5(%103: i64):  // 2 preds: ^bb4, ^bb12
    %104 = llvm.icmp "slt" %103, %101 : i64
    llvm.cond_br %104, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    %105 = llvm.mlir.constant(0 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%105 : i64)
  ^bb7(%108: i64):  // 2 preds: ^bb6, ^bb11
    %109 = llvm.icmp "slt" %108, %106 : i64
    llvm.cond_br %109, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %110 = llvm.mlir.constant(0 : index) : i64
    %111 = llvm.mlir.constant(1 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%110 : i64)
  ^bb9(%113: i64):  // 2 preds: ^bb8, ^bb10
    %114 = llvm.icmp "slt" %113, %111 : i64
    llvm.cond_br %114, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %115 = llvm.extractvalue %54[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %116 = llvm.add %93, %98  : i64
    %117 = llvm.add %116, %103  : i64
    %118 = llvm.add %117, %108  : i64
    %119 = llvm.add %118, %113  : i64
    %120 = llvm.getelementptr %115[%119] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %121 = llvm.load %120 : !llvm.ptr<i32>
    %122 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %123 = llvm.load %122 : !llvm.ptr<i32>
    %124 = llvm.icmp "slt" %121, %123 : i32
    %125 = llvm.select %124, %123, %121 : i1, i32
    %126 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %127 = llvm.load %126 : !llvm.ptr<i32>
    %128 = llvm.icmp "slt" %125, %127 : i32
    %129 = llvm.select %128, %125, %127 : i1, i32
    %130 = llvm.extractvalue %89[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %131 = llvm.add %93, %98  : i64
    %132 = llvm.add %131, %103  : i64
    %133 = llvm.add %132, %108  : i64
    %134 = llvm.add %133, %113  : i64
    %135 = llvm.getelementptr %130[%134] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %129, %135 : !llvm.ptr<i32>
    %136 = llvm.add %113, %112  : i64
    llvm.br ^bb9(%136 : i64)
  ^bb11:  // pred: ^bb9
    %137 = llvm.add %108, %107  : i64
    llvm.br ^bb7(%137 : i64)
  ^bb12:  // pred: ^bb7
    %138 = llvm.add %103, %102  : i64
    llvm.br ^bb5(%138 : i64)
  ^bb13:  // pred: ^bb5
    %139 = llvm.add %98, %97  : i64
    llvm.br ^bb3(%139 : i64)
  ^bb14:  // pred: ^bb3
    %140 = llvm.add %93, %92  : i64
    llvm.br ^bb1(%140 : i64)
  ^bb15:  // pred: ^bb1
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.mlir.constant(2 : index) : i64
    %146 = llvm.mlir.constant(1 : index) : i64
    %147 = llvm.mlir.constant(2 : index) : i64
    %148 = llvm.mlir.constant(2 : index) : i64
    %149 = llvm.mlir.constant(2 : index) : i64
    %150 = llvm.mlir.constant(2 : index) : i64
    %151 = llvm.mlir.null : !llvm.ptr<i32>
    %152 = llvm.getelementptr %151[%150] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %153 = llvm.ptrtoint %152 : !llvm.ptr<i32> to i64
    %154 = llvm.mlir.constant(16 : index) : i64
    %155 = llvm.add %153, %154  : i64
    %156 = llvm.call @malloc(%155) : (i64) -> !llvm.ptr<i8>
    %157 = llvm.bitcast %156 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %158 = llvm.ptrtoint %157 : !llvm.ptr<i32> to i64
    %159 = llvm.mlir.constant(1 : index) : i64
    %160 = llvm.sub %154, %159  : i64
    %161 = llvm.add %158, %160  : i64
    %162 = llvm.urem %161, %154  : i64
    %163 = llvm.sub %161, %162  : i64
    %164 = llvm.inttoptr %163 : i64 to !llvm.ptr<i32>
    %165 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %166 = llvm.insertvalue %157, %165[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %167 = llvm.insertvalue %164, %166[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %168 = llvm.mlir.constant(0 : index) : i64
    %169 = llvm.insertvalue %168, %167[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %170 = llvm.insertvalue %141, %169[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %171 = llvm.insertvalue %142, %170[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %172 = llvm.insertvalue %143, %171[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %173 = llvm.insertvalue %144, %172[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %174 = llvm.insertvalue %145, %173[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %175 = llvm.insertvalue %149, %174[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %176 = llvm.insertvalue %148, %175[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %177 = llvm.insertvalue %147, %176[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %178 = llvm.insertvalue %145, %177[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %179 = llvm.insertvalue %146, %178[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %180 = llvm.mlir.constant(0 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%180 : i64)
  ^bb16(%183: i64):  // 2 preds: ^bb15, ^bb29
    %184 = llvm.icmp "slt" %183, %181 : i64
    llvm.cond_br %184, ^bb17, ^bb30
  ^bb17:  // pred: ^bb16
    %185 = llvm.mlir.constant(0 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%185 : i64)
  ^bb18(%188: i64):  // 2 preds: ^bb17, ^bb28
    %189 = llvm.icmp "slt" %188, %186 : i64
    llvm.cond_br %189, ^bb19, ^bb29
  ^bb19:  // pred: ^bb18
    %190 = llvm.mlir.constant(0 : index) : i64
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%190 : i64)
  ^bb20(%193: i64):  // 2 preds: ^bb19, ^bb27
    %194 = llvm.icmp "slt" %193, %191 : i64
    llvm.cond_br %194, ^bb21, ^bb28
  ^bb21:  // pred: ^bb20
    %195 = llvm.mlir.constant(0 : index) : i64
    %196 = llvm.mlir.constant(1 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%195 : i64)
  ^bb22(%198: i64):  // 2 preds: ^bb21, ^bb26
    %199 = llvm.icmp "slt" %198, %196 : i64
    llvm.cond_br %199, ^bb23, ^bb27
  ^bb23:  // pred: ^bb22
    %200 = llvm.mlir.constant(0 : index) : i64
    %201 = llvm.mlir.constant(1 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%200 : i64)
  ^bb24(%203: i64):  // 2 preds: ^bb23, ^bb25
    %204 = llvm.icmp "slt" %203, %201 : i64
    llvm.cond_br %204, ^bb25, ^bb26
  ^bb25:  // pred: ^bb24
    %205 = llvm.extractvalue %89[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %206 = llvm.add %183, %188  : i64
    %207 = llvm.add %206, %193  : i64
    %208 = llvm.add %207, %198  : i64
    %209 = llvm.add %208, %203  : i64
    %210 = llvm.getelementptr %205[%209] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %211 = llvm.load %210 : !llvm.ptr<i32>
    %212 = llvm.extractvalue %179[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %213 = llvm.mlir.constant(2 : index) : i64
    %214 = llvm.mul %183, %213  : i64
    %215 = llvm.mlir.constant(2 : index) : i64
    %216 = llvm.mul %188, %215  : i64
    %217 = llvm.add %214, %216  : i64
    %218 = llvm.mlir.constant(2 : index) : i64
    %219 = llvm.mul %193, %218  : i64
    %220 = llvm.add %217, %219  : i64
    %221 = llvm.mlir.constant(2 : index) : i64
    %222 = llvm.mul %198, %221  : i64
    %223 = llvm.add %220, %222  : i64
    %224 = llvm.add %223, %203  : i64
    %225 = llvm.getelementptr %212[%224] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %211, %225 : !llvm.ptr<i32>
    %226 = llvm.add %203, %202  : i64
    llvm.br ^bb24(%226 : i64)
  ^bb26:  // pred: ^bb24
    %227 = llvm.add %198, %197  : i64
    llvm.br ^bb22(%227 : i64)
  ^bb27:  // pred: ^bb22
    %228 = llvm.add %193, %192  : i64
    llvm.br ^bb20(%228 : i64)
  ^bb28:  // pred: ^bb20
    %229 = llvm.add %188, %187  : i64
    llvm.br ^bb18(%229 : i64)
  ^bb29:  // pred: ^bb18
    %230 = llvm.add %183, %182  : i64
    llvm.br ^bb16(%230 : i64)
  ^bb30:  // pred: ^bb16
    %231 = llvm.mlir.constant(0 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    %233 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%231 : i64)
  ^bb31(%234: i64):  // 2 preds: ^bb30, ^bb44
    %235 = llvm.icmp "slt" %234, %232 : i64
    llvm.cond_br %235, ^bb32, ^bb45
  ^bb32:  // pred: ^bb31
    %236 = llvm.mlir.constant(0 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%236 : i64)
  ^bb33(%239: i64):  // 2 preds: ^bb32, ^bb43
    %240 = llvm.icmp "slt" %239, %237 : i64
    llvm.cond_br %240, ^bb34, ^bb44
  ^bb34:  // pred: ^bb33
    %241 = llvm.mlir.constant(0 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb35(%241 : i64)
  ^bb35(%244: i64):  // 2 preds: ^bb34, ^bb42
    %245 = llvm.icmp "slt" %244, %242 : i64
    llvm.cond_br %245, ^bb36, ^bb43
  ^bb36:  // pred: ^bb35
    %246 = llvm.mlir.constant(0 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%246 : i64)
  ^bb37(%249: i64):  // 2 preds: ^bb36, ^bb41
    %250 = llvm.icmp "slt" %249, %247 : i64
    llvm.cond_br %250, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    %251 = llvm.mlir.constant(0 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%251 : i64)
  ^bb39(%254: i64):  // 2 preds: ^bb38, ^bb40
    %255 = llvm.icmp "slt" %254, %252 : i64
    llvm.cond_br %255, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.add %254, %256  : i64
    %258 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %259 = llvm.add %234, %239  : i64
    %260 = llvm.add %259, %244  : i64
    %261 = llvm.add %260, %249  : i64
    %262 = llvm.add %261, %254  : i64
    %263 = llvm.getelementptr %258[%262] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %264 = llvm.load %263 : !llvm.ptr<i32>
    %265 = llvm.extractvalue %179[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %266 = llvm.mlir.constant(2 : index) : i64
    %267 = llvm.mul %234, %266  : i64
    %268 = llvm.mlir.constant(2 : index) : i64
    %269 = llvm.mul %239, %268  : i64
    %270 = llvm.add %267, %269  : i64
    %271 = llvm.mlir.constant(2 : index) : i64
    %272 = llvm.mul %244, %271  : i64
    %273 = llvm.add %270, %272  : i64
    %274 = llvm.mlir.constant(2 : index) : i64
    %275 = llvm.mul %249, %274  : i64
    %276 = llvm.add %273, %275  : i64
    %277 = llvm.add %276, %257  : i64
    %278 = llvm.getelementptr %265[%277] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %264, %278 : !llvm.ptr<i32>
    %279 = llvm.add %254, %253  : i64
    llvm.br ^bb39(%279 : i64)
  ^bb41:  // pred: ^bb39
    %280 = llvm.add %249, %248  : i64
    llvm.br ^bb37(%280 : i64)
  ^bb42:  // pred: ^bb37
    %281 = llvm.add %244, %243  : i64
    llvm.br ^bb35(%281 : i64)
  ^bb43:  // pred: ^bb35
    %282 = llvm.add %239, %238  : i64
    llvm.br ^bb33(%282 : i64)
  ^bb44:  // pred: ^bb33
    %283 = llvm.add %234, %233  : i64
    llvm.br ^bb31(%283 : i64)
  ^bb45:  // pred: ^bb31
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    %288 = llvm.mlir.constant(2 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    %290 = llvm.mlir.constant(2 : index) : i64
    %291 = llvm.mlir.constant(2 : index) : i64
    %292 = llvm.mlir.constant(2 : index) : i64
    %293 = llvm.mlir.constant(2 : index) : i64
    %294 = llvm.mlir.null : !llvm.ptr<i32>
    %295 = llvm.getelementptr %294[%293] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %296 = llvm.ptrtoint %295 : !llvm.ptr<i32> to i64
    %297 = llvm.mlir.constant(16 : index) : i64
    %298 = llvm.add %296, %297  : i64
    %299 = llvm.call @malloc(%298) : (i64) -> !llvm.ptr<i8>
    %300 = llvm.bitcast %299 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %301 = llvm.ptrtoint %300 : !llvm.ptr<i32> to i64
    %302 = llvm.mlir.constant(1 : index) : i64
    %303 = llvm.sub %297, %302  : i64
    %304 = llvm.add %301, %303  : i64
    %305 = llvm.urem %304, %297  : i64
    %306 = llvm.sub %304, %305  : i64
    %307 = llvm.inttoptr %306 : i64 to !llvm.ptr<i32>
    %308 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %309 = llvm.insertvalue %300, %308[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %310 = llvm.insertvalue %307, %309[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %311 = llvm.mlir.constant(0 : index) : i64
    %312 = llvm.insertvalue %311, %310[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %313 = llvm.insertvalue %284, %312[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %314 = llvm.insertvalue %285, %313[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %315 = llvm.insertvalue %286, %314[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %316 = llvm.insertvalue %287, %315[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %317 = llvm.insertvalue %288, %316[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %318 = llvm.insertvalue %292, %317[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %319 = llvm.insertvalue %291, %318[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %320 = llvm.insertvalue %290, %319[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %321 = llvm.insertvalue %288, %320[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %322 = llvm.insertvalue %289, %321[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %323 = llvm.mlir.constant(0 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%323 : i64)
  ^bb46(%326: i64):  // 2 preds: ^bb45, ^bb59
    %327 = llvm.icmp "slt" %326, %324 : i64
    llvm.cond_br %327, ^bb47, ^bb60
  ^bb47:  // pred: ^bb46
    %328 = llvm.mlir.constant(0 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%328 : i64)
  ^bb48(%331: i64):  // 2 preds: ^bb47, ^bb58
    %332 = llvm.icmp "slt" %331, %329 : i64
    llvm.cond_br %332, ^bb49, ^bb59
  ^bb49:  // pred: ^bb48
    %333 = llvm.mlir.constant(0 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%333 : i64)
  ^bb50(%336: i64):  // 2 preds: ^bb49, ^bb57
    %337 = llvm.icmp "slt" %336, %334 : i64
    llvm.cond_br %337, ^bb51, ^bb58
  ^bb51:  // pred: ^bb50
    %338 = llvm.mlir.constant(0 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    %340 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%338 : i64)
  ^bb52(%341: i64):  // 2 preds: ^bb51, ^bb56
    %342 = llvm.icmp "slt" %341, %339 : i64
    llvm.cond_br %342, ^bb53, ^bb57
  ^bb53:  // pred: ^bb52
    %343 = llvm.mlir.constant(0 : index) : i64
    %344 = llvm.mlir.constant(2 : index) : i64
    %345 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%343 : i64)
  ^bb54(%346: i64):  // 2 preds: ^bb53, ^bb55
    %347 = llvm.icmp "slt" %346, %344 : i64
    llvm.cond_br %347, ^bb55, ^bb56
  ^bb55:  // pred: ^bb54
    %348 = llvm.extractvalue %179[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %349 = llvm.mlir.constant(2 : index) : i64
    %350 = llvm.mul %326, %349  : i64
    %351 = llvm.mlir.constant(2 : index) : i64
    %352 = llvm.mul %331, %351  : i64
    %353 = llvm.add %350, %352  : i64
    %354 = llvm.mlir.constant(2 : index) : i64
    %355 = llvm.mul %336, %354  : i64
    %356 = llvm.add %353, %355  : i64
    %357 = llvm.mlir.constant(2 : index) : i64
    %358 = llvm.mul %341, %357  : i64
    %359 = llvm.add %356, %358  : i64
    %360 = llvm.add %359, %346  : i64
    %361 = llvm.getelementptr %348[%360] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %362 = llvm.load %361 : !llvm.ptr<i32>
    %363 = llvm.extractvalue %322[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %364 = llvm.mlir.constant(2 : index) : i64
    %365 = llvm.mul %326, %364  : i64
    %366 = llvm.mlir.constant(2 : index) : i64
    %367 = llvm.mul %331, %366  : i64
    %368 = llvm.add %365, %367  : i64
    %369 = llvm.mlir.constant(2 : index) : i64
    %370 = llvm.mul %336, %369  : i64
    %371 = llvm.add %368, %370  : i64
    %372 = llvm.mlir.constant(2 : index) : i64
    %373 = llvm.mul %341, %372  : i64
    %374 = llvm.add %371, %373  : i64
    %375 = llvm.add %374, %346  : i64
    %376 = llvm.getelementptr %363[%375] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %362, %376 : !llvm.ptr<i32>
    %377 = llvm.add %346, %345  : i64
    llvm.br ^bb54(%377 : i64)
  ^bb56:  // pred: ^bb54
    %378 = llvm.add %341, %340  : i64
    llvm.br ^bb52(%378 : i64)
  ^bb57:  // pred: ^bb52
    %379 = llvm.add %336, %335  : i64
    llvm.br ^bb50(%379 : i64)
  ^bb58:  // pred: ^bb50
    %380 = llvm.add %331, %330  : i64
    llvm.br ^bb48(%380 : i64)
  ^bb59:  // pred: ^bb48
    %381 = llvm.add %326, %325  : i64
    llvm.br ^bb46(%381 : i64)
  ^bb60:  // pred: ^bb46
    %382 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %383 = llvm.extractvalue %322[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %384 = llvm.extractvalue %322[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %385 = llvm.insertvalue %383, %382[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %386 = llvm.insertvalue %384, %385[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %387 = llvm.mlir.constant(0 : index) : i64
    %388 = llvm.insertvalue %387, %386[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %389 = llvm.mlir.constant(1 : index) : i64
    %390 = llvm.insertvalue %389, %388[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %391 = llvm.mlir.constant(2 : index) : i64
    %392 = llvm.insertvalue %391, %390[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %393 = llvm.mlir.constant(1 : index) : i64
    %394 = llvm.insertvalue %393, %392[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.mlir.constant(2 : index) : i64
    %396 = llvm.insertvalue %395, %394[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.mlir.constant(1 : index) : i64
    %398 = llvm.insertvalue %397, %396[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.mlir.constant(2 : index) : i64
    %400 = llvm.insertvalue %399, %398[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %401 = llvm.mlir.constant(2 : index) : i64
    %402 = llvm.insertvalue %401, %400[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.insertvalue %403, %402[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %405 = llvm.mlir.constant(1 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    %408 = llvm.mlir.constant(2 : index) : i64
    %409 = llvm.mlir.constant(1 : index) : i64
    %410 = llvm.mlir.constant(2 : index) : i64
    %411 = llvm.mlir.constant(2 : index) : i64
    %412 = llvm.mlir.constant(2 : index) : i64
    %413 = llvm.mlir.null : !llvm.ptr<i1>
    %414 = llvm.getelementptr %413[%412] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %415 = llvm.ptrtoint %414 : !llvm.ptr<i1> to i64
    %416 = llvm.mlir.constant(16 : index) : i64
    %417 = llvm.add %415, %416  : i64
    %418 = llvm.call @malloc(%417) : (i64) -> !llvm.ptr<i8>
    %419 = llvm.bitcast %418 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %420 = llvm.ptrtoint %419 : !llvm.ptr<i1> to i64
    %421 = llvm.mlir.constant(1 : index) : i64
    %422 = llvm.sub %416, %421  : i64
    %423 = llvm.add %420, %422  : i64
    %424 = llvm.urem %423, %416  : i64
    %425 = llvm.sub %423, %424  : i64
    %426 = llvm.inttoptr %425 : i64 to !llvm.ptr<i1>
    %427 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %428 = llvm.insertvalue %419, %427[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %429 = llvm.insertvalue %426, %428[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.mlir.constant(0 : index) : i64
    %431 = llvm.insertvalue %430, %429[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.insertvalue %405, %431[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.insertvalue %406, %432[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.insertvalue %407, %433[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.insertvalue %408, %434[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.insertvalue %411, %435[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.insertvalue %410, %436[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.insertvalue %408, %437[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.insertvalue %409, %438[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.mlir.constant(0 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%440 : i64)
  ^bb61(%443: i64):  // 2 preds: ^bb60, ^bb71
    %444 = llvm.icmp "slt" %443, %441 : i64
    llvm.cond_br %444, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %445 = llvm.mlir.constant(0 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%445 : i64)
  ^bb63(%448: i64):  // 2 preds: ^bb62, ^bb70
    %449 = llvm.icmp "slt" %448, %446 : i64
    llvm.cond_br %449, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %450 = llvm.mlir.constant(0 : index) : i64
    %451 = llvm.mlir.constant(1 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%450 : i64)
  ^bb65(%453: i64):  // 2 preds: ^bb64, ^bb69
    %454 = llvm.icmp "slt" %453, %451 : i64
    llvm.cond_br %454, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %455 = llvm.mlir.constant(0 : index) : i64
    %456 = llvm.mlir.constant(2 : index) : i64
    %457 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%455 : i64)
  ^bb67(%458: i64):  // 2 preds: ^bb66, ^bb68
    %459 = llvm.icmp "slt" %458, %456 : i64
    llvm.cond_br %459, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %460 = llvm.extractvalue %404[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %461 = llvm.mlir.constant(2 : index) : i64
    %462 = llvm.mul %443, %461  : i64
    %463 = llvm.mlir.constant(2 : index) : i64
    %464 = llvm.mul %448, %463  : i64
    %465 = llvm.add %462, %464  : i64
    %466 = llvm.mlir.constant(2 : index) : i64
    %467 = llvm.mul %453, %466  : i64
    %468 = llvm.add %465, %467  : i64
    %469 = llvm.add %468, %458  : i64
    %470 = llvm.getelementptr %460[%469] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %471 = llvm.load %470 : !llvm.ptr<i32>
    %472 = llvm.extractvalue %404[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %473 = llvm.mlir.constant(2 : index) : i64
    %474 = llvm.mul %443, %473  : i64
    %475 = llvm.mlir.constant(2 : index) : i64
    %476 = llvm.mul %448, %475  : i64
    %477 = llvm.add %474, %476  : i64
    %478 = llvm.mlir.constant(2 : index) : i64
    %479 = llvm.mul %453, %478  : i64
    %480 = llvm.add %477, %479  : i64
    %481 = llvm.add %480, %458  : i64
    %482 = llvm.getelementptr %472[%481] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %483 = llvm.load %482 : !llvm.ptr<i32>
    %484 = llvm.icmp "sgt" %471, %483 : i32
    %485 = llvm.extractvalue %439[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %486 = llvm.mlir.constant(2 : index) : i64
    %487 = llvm.mul %443, %486  : i64
    %488 = llvm.mlir.constant(2 : index) : i64
    %489 = llvm.mul %448, %488  : i64
    %490 = llvm.add %487, %489  : i64
    %491 = llvm.mlir.constant(2 : index) : i64
    %492 = llvm.mul %453, %491  : i64
    %493 = llvm.add %490, %492  : i64
    %494 = llvm.add %493, %458  : i64
    %495 = llvm.getelementptr %485[%494] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %484, %495 : !llvm.ptr<i1>
    %496 = llvm.add %458, %457  : i64
    llvm.br ^bb67(%496 : i64)
  ^bb69:  // pred: ^bb67
    %497 = llvm.add %453, %452  : i64
    llvm.br ^bb65(%497 : i64)
  ^bb70:  // pred: ^bb65
    %498 = llvm.add %448, %447  : i64
    llvm.br ^bb63(%498 : i64)
  ^bb71:  // pred: ^bb63
    %499 = llvm.add %443, %442  : i64
    llvm.br ^bb61(%499 : i64)
  ^bb72:  // pred: ^bb61
    llvm.return %439 : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v1_0"]} {
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
    %14 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %14, %arg0 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %51 = llvm.load %2 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %52 = llvm.mlir.constant(1 : i64) : i64
    %53 = llvm.mlir.constant(8 : i64) : i64
    %54 = llvm.call @malloc(%53) : (i64) -> !llvm.ptr<i8>
    %55 = llvm.bitcast %54 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %56 = llvm.mlir.constant(4 : i64) : i64
    %57 = llvm.call @omTensorCreateUntyped(%56) : (i64) -> !llvm.ptr<i8>
    %58 = llvm.mlir.constant(1 : i64) : i64
    %59 = llvm.extractvalue %51[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.bitcast %59 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %61 = llvm.extractvalue %51[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.bitcast %61 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%57, %58, %60, %62) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %63 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%57, %63) : (!llvm.ptr<i8>, i64) -> ()
    %64 = llvm.call @omTensorGetShape(%57) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %65 = llvm.call @omTensorGetStrides(%57) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %66 = llvm.mlir.constant(0 : i64) : i64
    %67 = llvm.extractvalue %51[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %64[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %51[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %65[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(1 : i64) : i64
    %72 = llvm.extractvalue %51[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %64[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %51[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %65[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(2 : i64) : i64
    %77 = llvm.extractvalue %51[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %64[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %51[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %65[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(3 : i64) : i64
    %82 = llvm.extractvalue %51[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.getelementptr %64[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.extractvalue %51[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.getelementptr %65[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.mlir.constant(0 : i64) : i64
    %87 = llvm.getelementptr %55[%86] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %57, %87 : !llvm.ptr<ptr<i8>>
    %88 = llvm.call @omTensorListCreate(%55, %52, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %88 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<70 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<70 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

