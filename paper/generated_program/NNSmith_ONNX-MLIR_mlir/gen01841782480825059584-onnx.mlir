module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<5> : tensor<1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x i32>>
  llvm.mlir.global internal constant @constant_3(dense<[1, 1, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[1, 1, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v2_0", "v4_0", "v3_0"]} {
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
    %12 = llvm.mlir.constant(1 : i64) : i64
    %13 = llvm.mlir.constant(0 : i64) : i64
    %14 = llvm.mlir.constant(-1 : i64) : i64
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %17 = llvm.bitcast %16 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %18 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.insertvalue %17, %18[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %17, %19[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.insertvalue %21, %20[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(4 : index) : i64
    %24 = llvm.insertvalue %23, %22[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.insertvalue %25, %24[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %29 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %30 = llvm.insertvalue %28, %29[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %34 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %36 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %37 = llvm.insertvalue %35, %36[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.insertvalue %35, %37[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(4 : index) : i64
    %42 = llvm.insertvalue %41, %40[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x array<1 x i32>>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<1 x array<1 x i32>>> to !llvm.ptr<i32>
    %47 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %48 = llvm.insertvalue %46, %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %49 = llvm.insertvalue %46, %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.insertvalue %50, %49[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.insertvalue %52, %51[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.insertvalue %54, %53[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.insertvalue %58, %57[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.mlir.constant(2 : index) : i64
    %63 = llvm.mlir.constant(2 : index) : i64
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.mlir.constant(4 : index) : i64
    %66 = llvm.mlir.constant(4 : index) : i64
    %67 = llvm.mlir.constant(4 : index) : i64
    %68 = llvm.mlir.null : !llvm.ptr<i32>
    %69 = llvm.getelementptr %68[%67] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %70 = llvm.ptrtoint %69 : !llvm.ptr<i32> to i64
    %71 = llvm.mlir.constant(16 : index) : i64
    %72 = llvm.add %70, %71  : i64
    %73 = llvm.call @malloc(%72) : (i64) -> !llvm.ptr<i8>
    %74 = llvm.bitcast %73 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %75 = llvm.ptrtoint %74 : !llvm.ptr<i32> to i64
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.sub %71, %76  : i64
    %78 = llvm.add %75, %77  : i64
    %79 = llvm.urem %78, %71  : i64
    %80 = llvm.sub %78, %79  : i64
    %81 = llvm.inttoptr %80 : i64 to !llvm.ptr<i32>
    %82 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %83 = llvm.insertvalue %74, %82[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.insertvalue %81, %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.insertvalue %85, %84[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.insertvalue %60, %86[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.insertvalue %61, %87[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.insertvalue %62, %88[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.insertvalue %63, %89[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.insertvalue %66, %90[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.insertvalue %65, %91[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.insertvalue %63, %92[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.insertvalue %64, %93[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.mlir.constant(0 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%95 : i64)
  ^bb1(%98: i64):  // 2 preds: ^bb0, ^bb11
    %99 = llvm.icmp "slt" %98, %96 : i64
    llvm.cond_br %99, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %100 = llvm.mlir.constant(0 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%100 : i64)
  ^bb3(%103: i64):  // 2 preds: ^bb2, ^bb10
    %104 = llvm.icmp "slt" %103, %101 : i64
    llvm.cond_br %104, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %105 = llvm.mlir.constant(0 : index) : i64
    %106 = llvm.mlir.constant(2 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%105 : i64)
  ^bb5(%108: i64):  // 2 preds: ^bb4, ^bb9
    %109 = llvm.icmp "slt" %108, %106 : i64
    llvm.cond_br %109, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %110 = llvm.mlir.constant(0 : index) : i64
    %111 = llvm.mlir.constant(2 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%110 : i64)
  ^bb7(%113: i64):  // 2 preds: ^bb6, ^bb8
    %114 = llvm.icmp "slt" %113, %111 : i64
    llvm.cond_br %114, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %115 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.mlir.constant(4 : index) : i64
    %117 = llvm.mul %98, %116  : i64
    %118 = llvm.mlir.constant(4 : index) : i64
    %119 = llvm.mul %103, %118  : i64
    %120 = llvm.add %117, %119  : i64
    %121 = llvm.mlir.constant(2 : index) : i64
    %122 = llvm.mul %108, %121  : i64
    %123 = llvm.add %120, %122  : i64
    %124 = llvm.add %123, %113  : i64
    %125 = llvm.getelementptr %115[%124] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %126 = llvm.load %125 : !llvm.ptr<i32>
    %127 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %128 = llvm.add %15, %15  : i64
    %129 = llvm.getelementptr %127[%128] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %130 = llvm.load %129 : !llvm.ptr<i32>
    %131 = llvm.mul %126, %130  : i32
    %132 = llvm.extractvalue %94[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.mlir.constant(4 : index) : i64
    %134 = llvm.mul %98, %133  : i64
    %135 = llvm.mlir.constant(4 : index) : i64
    %136 = llvm.mul %103, %135  : i64
    %137 = llvm.add %134, %136  : i64
    %138 = llvm.mlir.constant(2 : index) : i64
    %139 = llvm.mul %108, %138  : i64
    %140 = llvm.add %137, %139  : i64
    %141 = llvm.add %140, %113  : i64
    %142 = llvm.getelementptr %132[%141] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %131, %142 : !llvm.ptr<i32>
    %143 = llvm.add %113, %112  : i64
    llvm.br ^bb7(%143 : i64)
  ^bb9:  // pred: ^bb7
    %144 = llvm.add %108, %107  : i64
    llvm.br ^bb5(%144 : i64)
  ^bb10:  // pred: ^bb5
    %145 = llvm.add %103, %102  : i64
    llvm.br ^bb3(%145 : i64)
  ^bb11:  // pred: ^bb3
    %146 = llvm.add %98, %97  : i64
    llvm.br ^bb1(%146 : i64)
  ^bb12:  // pred: ^bb1
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.mlir.constant(2 : index) : i64
    %150 = llvm.mlir.constant(2 : index) : i64
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.mlir.constant(4 : index) : i64
    %153 = llvm.mlir.constant(4 : index) : i64
    %154 = llvm.mlir.constant(4 : index) : i64
    %155 = llvm.mlir.null : !llvm.ptr<i32>
    %156 = llvm.getelementptr %155[%154] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %157 = llvm.ptrtoint %156 : !llvm.ptr<i32> to i64
    %158 = llvm.mlir.constant(16 : index) : i64
    %159 = llvm.add %157, %158  : i64
    %160 = llvm.call @malloc(%159) : (i64) -> !llvm.ptr<i8>
    %161 = llvm.bitcast %160 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %162 = llvm.ptrtoint %161 : !llvm.ptr<i32> to i64
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.sub %158, %163  : i64
    %165 = llvm.add %162, %164  : i64
    %166 = llvm.urem %165, %158  : i64
    %167 = llvm.sub %165, %166  : i64
    %168 = llvm.inttoptr %167 : i64 to !llvm.ptr<i32>
    %169 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %170 = llvm.insertvalue %161, %169[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.insertvalue %168, %170[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.mlir.constant(0 : index) : i64
    %173 = llvm.insertvalue %172, %171[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.insertvalue %147, %173[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.insertvalue %148, %174[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.insertvalue %149, %175[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.insertvalue %150, %176[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.insertvalue %153, %177[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.insertvalue %152, %178[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.insertvalue %150, %179[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.insertvalue %151, %180[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.mlir.constant(0 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%182 : i64)
  ^bb13(%185: i64):  // 2 preds: ^bb12, ^bb23
    %186 = llvm.icmp "slt" %185, %183 : i64
    llvm.cond_br %186, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %187 = llvm.mlir.constant(0 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%187 : i64)
  ^bb15(%190: i64):  // 2 preds: ^bb14, ^bb22
    %191 = llvm.icmp "slt" %190, %188 : i64
    llvm.cond_br %191, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.mlir.constant(2 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%192 : i64)
  ^bb17(%195: i64):  // 2 preds: ^bb16, ^bb21
    %196 = llvm.icmp "slt" %195, %193 : i64
    llvm.cond_br %196, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %197 = llvm.mlir.constant(0 : index) : i64
    %198 = llvm.mlir.constant(2 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%197 : i64)
  ^bb19(%200: i64):  // 2 preds: ^bb18, ^bb20
    %201 = llvm.icmp "slt" %200, %198 : i64
    llvm.cond_br %201, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %202 = llvm.extractvalue %94[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.mlir.constant(4 : index) : i64
    %204 = llvm.mul %185, %203  : i64
    %205 = llvm.mlir.constant(4 : index) : i64
    %206 = llvm.mul %190, %205  : i64
    %207 = llvm.add %204, %206  : i64
    %208 = llvm.mlir.constant(2 : index) : i64
    %209 = llvm.mul %195, %208  : i64
    %210 = llvm.add %207, %209  : i64
    %211 = llvm.add %210, %200  : i64
    %212 = llvm.getelementptr %202[%211] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %213 = llvm.load %212 : !llvm.ptr<i32>
    %214 = llvm.extractvalue %94[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.mlir.constant(4 : index) : i64
    %216 = llvm.mul %185, %215  : i64
    %217 = llvm.mlir.constant(4 : index) : i64
    %218 = llvm.mul %190, %217  : i64
    %219 = llvm.add %216, %218  : i64
    %220 = llvm.mlir.constant(2 : index) : i64
    %221 = llvm.mul %195, %220  : i64
    %222 = llvm.add %219, %221  : i64
    %223 = llvm.add %222, %200  : i64
    %224 = llvm.getelementptr %214[%223] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %225 = llvm.load %224 : !llvm.ptr<i32>
    %226 = llvm.sub %213, %225  : i32
    %227 = llvm.extractvalue %181[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.mlir.constant(4 : index) : i64
    %229 = llvm.mul %185, %228  : i64
    %230 = llvm.mlir.constant(4 : index) : i64
    %231 = llvm.mul %190, %230  : i64
    %232 = llvm.add %229, %231  : i64
    %233 = llvm.mlir.constant(2 : index) : i64
    %234 = llvm.mul %195, %233  : i64
    %235 = llvm.add %232, %234  : i64
    %236 = llvm.add %235, %200  : i64
    %237 = llvm.getelementptr %227[%236] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %226, %237 : !llvm.ptr<i32>
    %238 = llvm.add %200, %199  : i64
    llvm.br ^bb19(%238 : i64)
  ^bb21:  // pred: ^bb19
    %239 = llvm.add %195, %194  : i64
    llvm.br ^bb17(%239 : i64)
  ^bb22:  // pred: ^bb17
    %240 = llvm.add %190, %189  : i64
    llvm.br ^bb15(%240 : i64)
  ^bb23:  // pred: ^bb15
    %241 = llvm.add %185, %184  : i64
    llvm.br ^bb13(%241 : i64)
  ^bb24:  // pred: ^bb13
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.mlir.constant(2 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.mlir.constant(2 : index) : i64
    %247 = llvm.mlir.constant(2 : index) : i64
    %248 = llvm.mlir.null : !llvm.ptr<i64>
    %249 = llvm.getelementptr %248[%247] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %250 = llvm.ptrtoint %249 : !llvm.ptr<i64> to i64
    %251 = llvm.mlir.constant(16 : index) : i64
    %252 = llvm.add %250, %251  : i64
    %253 = llvm.call @malloc(%252) : (i64) -> !llvm.ptr<i8>
    %254 = llvm.bitcast %253 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %255 = llvm.ptrtoint %254 : !llvm.ptr<i64> to i64
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.sub %251, %256  : i64
    %258 = llvm.add %255, %257  : i64
    %259 = llvm.urem %258, %251  : i64
    %260 = llvm.sub %258, %259  : i64
    %261 = llvm.inttoptr %260 : i64 to !llvm.ptr<i64>
    %262 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %263 = llvm.insertvalue %254, %262[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %264 = llvm.insertvalue %261, %263[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %265 = llvm.mlir.constant(0 : index) : i64
    %266 = llvm.insertvalue %265, %264[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %267 = llvm.insertvalue %242, %266[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %268 = llvm.insertvalue %243, %267[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %269 = llvm.insertvalue %244, %268[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %270 = llvm.insertvalue %246, %269[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %271 = llvm.insertvalue %244, %270[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %272 = llvm.insertvalue %245, %271[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %273 = llvm.mlir.constant(0 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%273 : i64)
  ^bb25(%276: i64):  // 2 preds: ^bb24, ^bb32
    %277 = llvm.icmp "slt" %276, %274 : i64
    llvm.cond_br %277, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%278 : i64)
  ^bb27(%281: i64):  // 2 preds: ^bb26, ^bb31
    %282 = llvm.icmp "slt" %281, %279 : i64
    llvm.cond_br %282, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.mlir.constant(2 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%283 : i64)
  ^bb29(%286: i64):  // 2 preds: ^bb28, ^bb30
    %287 = llvm.icmp "slt" %286, %284 : i64
    llvm.cond_br %287, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %288 = llvm.extractvalue %272[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %289 = llvm.mlir.constant(2 : index) : i64
    %290 = llvm.mul %276, %289  : i64
    %291 = llvm.mlir.constant(2 : index) : i64
    %292 = llvm.mul %281, %291  : i64
    %293 = llvm.add %290, %292  : i64
    %294 = llvm.add %293, %286  : i64
    %295 = llvm.getelementptr %288[%294] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %14, %295 : !llvm.ptr<i64>
    %296 = llvm.add %286, %285  : i64
    llvm.br ^bb29(%296 : i64)
  ^bb31:  // pred: ^bb29
    %297 = llvm.add %281, %280  : i64
    llvm.br ^bb27(%297 : i64)
  ^bb32:  // pred: ^bb27
    %298 = llvm.add %276, %275  : i64
    llvm.br ^bb25(%298 : i64)
  ^bb33:  // pred: ^bb25
    %299 = llvm.mlir.constant(0 : index) : i64
    %300 = llvm.mlir.constant(1 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%299 : i64)
  ^bb34(%302: i64):  // 2 preds: ^bb33, ^bb44
    %303 = llvm.icmp "slt" %302, %300 : i64
    llvm.cond_br %303, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %304 = llvm.mlir.constant(0 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    %306 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%304 : i64)
  ^bb36(%307: i64):  // 2 preds: ^bb35, ^bb43
    %308 = llvm.icmp "slt" %307, %305 : i64
    llvm.cond_br %308, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %309 = llvm.mlir.constant(0 : index) : i64
    %310 = llvm.mlir.constant(2 : index) : i64
    %311 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%309 : i64)
  ^bb38(%312: i64):  // 2 preds: ^bb37, ^bb42
    %313 = llvm.icmp "slt" %312, %310 : i64
    llvm.cond_br %313, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %314 = llvm.mlir.constant(0 : index) : i64
    %315 = llvm.mlir.constant(2 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%314 : i64)
  ^bb40(%317: i64):  // 2 preds: ^bb39, ^bb41
    %318 = llvm.icmp "slt" %317, %315 : i64
    llvm.cond_br %318, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %319 = llvm.extractvalue %94[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %320 = llvm.mlir.constant(4 : index) : i64
    %321 = llvm.mul %302, %320  : i64
    %322 = llvm.mlir.constant(4 : index) : i64
    %323 = llvm.mul %307, %322  : i64
    %324 = llvm.add %321, %323  : i64
    %325 = llvm.mlir.constant(2 : index) : i64
    %326 = llvm.mul %312, %325  : i64
    %327 = llvm.add %324, %326  : i64
    %328 = llvm.add %327, %317  : i64
    %329 = llvm.getelementptr %319[%328] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %330 = llvm.load %329 : !llvm.ptr<i32>
    %331 = llvm.extractvalue %272[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %332 = llvm.mlir.constant(2 : index) : i64
    %333 = llvm.mul %302, %332  : i64
    %334 = llvm.mlir.constant(2 : index) : i64
    %335 = llvm.mul %307, %334  : i64
    %336 = llvm.add %333, %335  : i64
    %337 = llvm.add %336, %312  : i64
    %338 = llvm.getelementptr %331[%337] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %339 = llvm.load %338 : !llvm.ptr<i64>
    %340 = llvm.icmp "slt" %339, %13 : i64
    %341 = llvm.select %340, %13, %339 : i1, i64
    %342 = llvm.extractvalue %94[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %343 = llvm.mlir.constant(4 : index) : i64
    %344 = llvm.mul %302, %343  : i64
    %345 = llvm.mlir.constant(4 : index) : i64
    %346 = llvm.mul %307, %345  : i64
    %347 = llvm.add %344, %346  : i64
    %348 = llvm.mlir.constant(2 : index) : i64
    %349 = llvm.mul %312, %348  : i64
    %350 = llvm.add %347, %349  : i64
    %351 = llvm.add %350, %341  : i64
    %352 = llvm.getelementptr %342[%351] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %353 = llvm.load %352 : !llvm.ptr<i32>
    %354 = llvm.icmp "sgt" %330, %353 : i32
    %355 = llvm.select %354, %317, %341 : i1, i64
    %356 = llvm.extractvalue %272[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %357 = llvm.mlir.constant(2 : index) : i64
    %358 = llvm.mul %302, %357  : i64
    %359 = llvm.mlir.constant(2 : index) : i64
    %360 = llvm.mul %307, %359  : i64
    %361 = llvm.add %358, %360  : i64
    %362 = llvm.add %361, %312  : i64
    %363 = llvm.getelementptr %356[%362] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %355, %363 : !llvm.ptr<i64>
    %364 = llvm.add %317, %316  : i64
    llvm.br ^bb40(%364 : i64)
  ^bb42:  // pred: ^bb40
    %365 = llvm.add %312, %311  : i64
    llvm.br ^bb38(%365 : i64)
  ^bb43:  // pred: ^bb38
    %366 = llvm.add %307, %306  : i64
    llvm.br ^bb36(%366 : i64)
  ^bb44:  // pred: ^bb36
    %367 = llvm.add %302, %301  : i64
    llvm.br ^bb34(%367 : i64)
  ^bb45:  // pred: ^bb34
    %368 = llvm.mlir.constant(4 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.mlir.null : !llvm.ptr<i64>
    %371 = llvm.getelementptr %370[%368] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %372 = llvm.ptrtoint %371 : !llvm.ptr<i64> to i64
    %373 = llvm.mlir.constant(16 : index) : i64
    %374 = llvm.add %372, %373  : i64
    %375 = llvm.call @malloc(%374) : (i64) -> !llvm.ptr<i8>
    %376 = llvm.bitcast %375 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %377 = llvm.ptrtoint %376 : !llvm.ptr<i64> to i64
    %378 = llvm.mlir.constant(1 : index) : i64
    %379 = llvm.sub %373, %378  : i64
    %380 = llvm.add %377, %379  : i64
    %381 = llvm.urem %380, %373  : i64
    %382 = llvm.sub %380, %381  : i64
    %383 = llvm.inttoptr %382 : i64 to !llvm.ptr<i64>
    %384 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %385 = llvm.insertvalue %376, %384[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %386 = llvm.insertvalue %383, %385[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %387 = llvm.mlir.constant(0 : index) : i64
    %388 = llvm.insertvalue %387, %386[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %389 = llvm.insertvalue %368, %388[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %390 = llvm.insertvalue %369, %389[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %391 = llvm.mlir.constant(0 : index) : i64
    %392 = llvm.mlir.constant(4 : index) : i64
    %393 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%391 : i64)
  ^bb46(%394: i64):  // 2 preds: ^bb45, ^bb47
    %395 = llvm.icmp "slt" %394, %392 : i64
    llvm.cond_br %395, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %396 = llvm.extractvalue %390[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %397 = llvm.getelementptr %396[%394] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %397 : !llvm.ptr<i64>
    %398 = llvm.add %394, %393  : i64
    llvm.br ^bb46(%398 : i64)
  ^bb48:  // pred: ^bb46
    %399 = llvm.mlir.constant(4 : index) : i64
    %400 = llvm.mlir.constant(1 : index) : i64
    %401 = llvm.mlir.null : !llvm.ptr<i64>
    %402 = llvm.getelementptr %401[%399] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %403 = llvm.ptrtoint %402 : !llvm.ptr<i64> to i64
    %404 = llvm.mlir.constant(16 : index) : i64
    %405 = llvm.add %403, %404  : i64
    %406 = llvm.call @malloc(%405) : (i64) -> !llvm.ptr<i8>
    %407 = llvm.bitcast %406 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %408 = llvm.ptrtoint %407 : !llvm.ptr<i64> to i64
    %409 = llvm.mlir.constant(1 : index) : i64
    %410 = llvm.sub %404, %409  : i64
    %411 = llvm.add %408, %410  : i64
    %412 = llvm.urem %411, %404  : i64
    %413 = llvm.sub %411, %412  : i64
    %414 = llvm.inttoptr %413 : i64 to !llvm.ptr<i64>
    %415 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %416 = llvm.insertvalue %407, %415[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %417 = llvm.insertvalue %414, %416[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %418 = llvm.mlir.constant(0 : index) : i64
    %419 = llvm.insertvalue %418, %417[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %420 = llvm.insertvalue %399, %419[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %421 = llvm.insertvalue %400, %420[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %422 = llvm.mlir.constant(0 : index) : i64
    %423 = llvm.mlir.constant(4 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%422 : i64)
  ^bb49(%425: i64):  // 2 preds: ^bb48, ^bb50
    %426 = llvm.icmp "slt" %425, %423 : i64
    llvm.cond_br %426, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %427 = llvm.extractvalue %390[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %428 = llvm.getelementptr %427[%425] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %429 = llvm.load %428 : !llvm.ptr<i64>
    %430 = llvm.extractvalue %33[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %431 = llvm.load %430 : !llvm.ptr<i64>
    %432 = llvm.mul %429, %431  : i64
    %433 = llvm.extractvalue %421[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %434 = llvm.getelementptr %433[%425] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %432, %434 : !llvm.ptr<i64>
    %435 = llvm.add %425, %424  : i64
    llvm.br ^bb49(%435 : i64)
  ^bb51:  // pred: ^bb49
    %436 = llvm.mlir.constant(4 : index) : i64
    %437 = llvm.mlir.constant(1 : index) : i64
    %438 = llvm.mlir.null : !llvm.ptr<i1>
    %439 = llvm.getelementptr %438[%436] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %440 = llvm.ptrtoint %439 : !llvm.ptr<i1> to i64
    %441 = llvm.mlir.constant(16 : index) : i64
    %442 = llvm.add %440, %441  : i64
    %443 = llvm.call @malloc(%442) : (i64) -> !llvm.ptr<i8>
    %444 = llvm.bitcast %443 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %445 = llvm.ptrtoint %444 : !llvm.ptr<i1> to i64
    %446 = llvm.mlir.constant(1 : index) : i64
    %447 = llvm.sub %441, %446  : i64
    %448 = llvm.add %445, %447  : i64
    %449 = llvm.urem %448, %441  : i64
    %450 = llvm.sub %448, %449  : i64
    %451 = llvm.inttoptr %450 : i64 to !llvm.ptr<i1>
    %452 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %453 = llvm.insertvalue %444, %452[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %454 = llvm.insertvalue %451, %453[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %455 = llvm.mlir.constant(0 : index) : i64
    %456 = llvm.insertvalue %455, %454[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %457 = llvm.insertvalue %436, %456[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %458 = llvm.insertvalue %437, %457[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %459 = llvm.mlir.constant(0 : index) : i64
    %460 = llvm.mlir.constant(4 : index) : i64
    %461 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%459 : i64)
  ^bb52(%462: i64):  // 2 preds: ^bb51, ^bb53
    %463 = llvm.icmp "slt" %462, %460 : i64
    llvm.cond_br %463, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %464 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %465 = llvm.getelementptr %464[%462] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %466 = llvm.load %465 : !llvm.ptr<i64>
    %467 = llvm.extractvalue %421[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %468 = llvm.getelementptr %467[%462] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %469 = llvm.load %468 : !llvm.ptr<i64>
    %470 = llvm.icmp "eq" %466, %469 : i64
    %471 = llvm.extractvalue %458[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %472 = llvm.getelementptr %471[%462] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %470, %472 : !llvm.ptr<i1>
    %473 = llvm.add %462, %461  : i64
    llvm.br ^bb52(%473 : i64)
  ^bb54:  // pred: ^bb52
    %474 = llvm.mlir.constant(4 : index) : i64
    %475 = llvm.mlir.constant(1 : index) : i64
    %476 = llvm.mlir.null : !llvm.ptr<i64>
    %477 = llvm.getelementptr %476[%474] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %478 = llvm.ptrtoint %477 : !llvm.ptr<i64> to i64
    %479 = llvm.mlir.constant(16 : index) : i64
    %480 = llvm.add %478, %479  : i64
    %481 = llvm.call @malloc(%480) : (i64) -> !llvm.ptr<i8>
    %482 = llvm.bitcast %481 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %483 = llvm.ptrtoint %482 : !llvm.ptr<i64> to i64
    %484 = llvm.mlir.constant(1 : index) : i64
    %485 = llvm.sub %479, %484  : i64
    %486 = llvm.add %483, %485  : i64
    %487 = llvm.urem %486, %479  : i64
    %488 = llvm.sub %486, %487  : i64
    %489 = llvm.inttoptr %488 : i64 to !llvm.ptr<i64>
    %490 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %491 = llvm.insertvalue %482, %490[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %492 = llvm.insertvalue %489, %491[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %493 = llvm.mlir.constant(0 : index) : i64
    %494 = llvm.insertvalue %493, %492[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %495 = llvm.insertvalue %474, %494[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %496 = llvm.insertvalue %475, %495[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %497 = llvm.mlir.constant(0 : index) : i64
    %498 = llvm.mlir.constant(4 : index) : i64
    %499 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%497 : i64)
  ^bb55(%500: i64):  // 2 preds: ^bb54, ^bb56
    %501 = llvm.icmp "slt" %500, %498 : i64
    llvm.cond_br %501, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %502 = llvm.extractvalue %458[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %503 = llvm.getelementptr %502[%500] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %504 = llvm.load %503 : !llvm.ptr<i1>
    %505 = llvm.extractvalue %390[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %506 = llvm.getelementptr %505[%500] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %507 = llvm.load %506 : !llvm.ptr<i64>
    %508 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %509 = llvm.getelementptr %508[%500] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %510 = llvm.load %509 : !llvm.ptr<i64>
    %511 = llvm.select %504, %507, %510 : i1, i64
    %512 = llvm.extractvalue %496[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %513 = llvm.getelementptr %512[%500] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %511, %513 : !llvm.ptr<i64>
    %514 = llvm.add %500, %499  : i64
    llvm.br ^bb55(%514 : i64)
  ^bb57:  // pred: ^bb55
    %515 = llvm.mlir.constant(1 : index) : i64
    %516 = llvm.mlir.constant(1 : index) : i64
    %517 = llvm.mlir.constant(1 : index) : i64
    %518 = llvm.mlir.constant(2 : index) : i64
    %519 = llvm.mlir.constant(1 : index) : i64
    %520 = llvm.mlir.constant(2 : index) : i64
    %521 = llvm.mlir.constant(2 : index) : i64
    %522 = llvm.mlir.constant(2 : index) : i64
    %523 = llvm.mlir.null : !llvm.ptr<i64>
    %524 = llvm.getelementptr %523[%522] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %525 = llvm.ptrtoint %524 : !llvm.ptr<i64> to i64
    %526 = llvm.mlir.constant(16 : index) : i64
    %527 = llvm.add %525, %526  : i64
    %528 = llvm.call @malloc(%527) : (i64) -> !llvm.ptr<i8>
    %529 = llvm.bitcast %528 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %530 = llvm.ptrtoint %529 : !llvm.ptr<i64> to i64
    %531 = llvm.mlir.constant(1 : index) : i64
    %532 = llvm.sub %526, %531  : i64
    %533 = llvm.add %530, %532  : i64
    %534 = llvm.urem %533, %526  : i64
    %535 = llvm.sub %533, %534  : i64
    %536 = llvm.inttoptr %535 : i64 to !llvm.ptr<i64>
    %537 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %538 = llvm.insertvalue %529, %537[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %539 = llvm.insertvalue %536, %538[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %540 = llvm.mlir.constant(0 : index) : i64
    %541 = llvm.insertvalue %540, %539[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %542 = llvm.insertvalue %515, %541[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %543 = llvm.insertvalue %516, %542[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %544 = llvm.insertvalue %517, %543[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %545 = llvm.insertvalue %518, %544[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %546 = llvm.insertvalue %521, %545[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %547 = llvm.insertvalue %520, %546[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %548 = llvm.insertvalue %518, %547[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %549 = llvm.insertvalue %519, %548[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %550 = llvm.mlir.constant(0 : index) : i64
    %551 = llvm.mlir.constant(1 : index) : i64
    %552 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%550 : i64)
  ^bb58(%553: i64):  // 2 preds: ^bb57, ^bb68
    %554 = llvm.icmp "slt" %553, %551 : i64
    llvm.cond_br %554, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %555 = llvm.mlir.constant(0 : index) : i64
    %556 = llvm.mlir.constant(1 : index) : i64
    %557 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%555 : i64)
  ^bb60(%558: i64):  // 2 preds: ^bb59, ^bb67
    %559 = llvm.icmp "slt" %558, %556 : i64
    llvm.cond_br %559, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %560 = llvm.mlir.constant(0 : index) : i64
    %561 = llvm.mlir.constant(1 : index) : i64
    %562 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%560 : i64)
  ^bb62(%563: i64):  // 2 preds: ^bb61, ^bb66
    %564 = llvm.icmp "slt" %563, %561 : i64
    llvm.cond_br %564, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %565 = llvm.mlir.constant(0 : index) : i64
    %566 = llvm.mlir.constant(2 : index) : i64
    %567 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%565 : i64)
  ^bb64(%568: i64):  // 2 preds: ^bb63, ^bb65
    %569 = llvm.icmp "slt" %568, %566 : i64
    llvm.cond_br %569, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %570 = llvm.extractvalue %272[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %571 = llvm.mlir.constant(2 : index) : i64
    %572 = llvm.mul %15, %571  : i64
    %573 = llvm.mlir.constant(2 : index) : i64
    %574 = llvm.mul %15, %573  : i64
    %575 = llvm.add %572, %574  : i64
    %576 = llvm.add %575, %568  : i64
    %577 = llvm.getelementptr %570[%576] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %578 = llvm.load %577 : !llvm.ptr<i64>
    %579 = llvm.extractvalue %549[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %580 = llvm.mlir.constant(2 : index) : i64
    %581 = llvm.mul %553, %580  : i64
    %582 = llvm.mlir.constant(2 : index) : i64
    %583 = llvm.mul %558, %582  : i64
    %584 = llvm.add %581, %583  : i64
    %585 = llvm.mlir.constant(2 : index) : i64
    %586 = llvm.mul %563, %585  : i64
    %587 = llvm.add %584, %586  : i64
    %588 = llvm.add %587, %568  : i64
    %589 = llvm.getelementptr %579[%588] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %578, %589 : !llvm.ptr<i64>
    %590 = llvm.add %568, %567  : i64
    llvm.br ^bb64(%590 : i64)
  ^bb66:  // pred: ^bb64
    %591 = llvm.add %563, %562  : i64
    llvm.br ^bb62(%591 : i64)
  ^bb67:  // pred: ^bb62
    %592 = llvm.add %558, %557  : i64
    llvm.br ^bb60(%592 : i64)
  ^bb68:  // pred: ^bb60
    %593 = llvm.add %553, %552  : i64
    llvm.br ^bb58(%593 : i64)
  ^bb69:  // pred: ^bb58
    %594 = llvm.mlir.constant(1 : index) : i64
    %595 = llvm.mlir.constant(1 : index) : i64
    %596 = llvm.mlir.constant(2 : index) : i64
    %597 = llvm.mlir.constant(1 : index) : i64
    %598 = llvm.mlir.constant(2 : index) : i64
    %599 = llvm.mlir.constant(2 : index) : i64
    %600 = llvm.mlir.null : !llvm.ptr<i64>
    %601 = llvm.getelementptr %600[%599] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %602 = llvm.ptrtoint %601 : !llvm.ptr<i64> to i64
    %603 = llvm.mlir.constant(16 : index) : i64
    %604 = llvm.add %602, %603  : i64
    %605 = llvm.call @malloc(%604) : (i64) -> !llvm.ptr<i8>
    %606 = llvm.bitcast %605 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %607 = llvm.ptrtoint %606 : !llvm.ptr<i64> to i64
    %608 = llvm.mlir.constant(1 : index) : i64
    %609 = llvm.sub %603, %608  : i64
    %610 = llvm.add %607, %609  : i64
    %611 = llvm.urem %610, %603  : i64
    %612 = llvm.sub %610, %611  : i64
    %613 = llvm.inttoptr %612 : i64 to !llvm.ptr<i64>
    %614 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %615 = llvm.insertvalue %606, %614[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %616 = llvm.insertvalue %613, %615[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %617 = llvm.mlir.constant(0 : index) : i64
    %618 = llvm.insertvalue %617, %616[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %619 = llvm.insertvalue %594, %618[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %620 = llvm.insertvalue %595, %619[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %621 = llvm.insertvalue %596, %620[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %622 = llvm.insertvalue %598, %621[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %623 = llvm.insertvalue %596, %622[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %624 = llvm.insertvalue %597, %623[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %625 = llvm.mlir.constant(0 : index) : i64
    %626 = llvm.mlir.constant(1 : index) : i64
    %627 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%625 : i64)
  ^bb70(%628: i64):  // 2 preds: ^bb69, ^bb77
    %629 = llvm.icmp "slt" %628, %626 : i64
    llvm.cond_br %629, ^bb71, ^bb78
  ^bb71:  // pred: ^bb70
    %630 = llvm.mlir.constant(0 : index) : i64
    %631 = llvm.mlir.constant(1 : index) : i64
    %632 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%630 : i64)
  ^bb72(%633: i64):  // 2 preds: ^bb71, ^bb76
    %634 = llvm.icmp "slt" %633, %631 : i64
    llvm.cond_br %634, ^bb73, ^bb77
  ^bb73:  // pred: ^bb72
    %635 = llvm.mlir.constant(0 : index) : i64
    %636 = llvm.mlir.constant(2 : index) : i64
    %637 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%635 : i64)
  ^bb74(%638: i64):  // 2 preds: ^bb73, ^bb75
    %639 = llvm.icmp "slt" %638, %636 : i64
    llvm.cond_br %639, ^bb75, ^bb76
  ^bb75:  // pred: ^bb74
    %640 = llvm.extractvalue %272[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %641 = llvm.mlir.constant(2 : index) : i64
    %642 = llvm.mul %628, %641  : i64
    %643 = llvm.mlir.constant(2 : index) : i64
    %644 = llvm.mul %633, %643  : i64
    %645 = llvm.add %642, %644  : i64
    %646 = llvm.add %645, %638  : i64
    %647 = llvm.getelementptr %640[%646] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %648 = llvm.load %647 : !llvm.ptr<i64>
    %649 = llvm.mlir.constant(false) : i1
    %650 = "llvm.intr.abs"(%648, %649) : (i64, i1) -> i64
    %651 = llvm.extractvalue %624[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %652 = llvm.mlir.constant(2 : index) : i64
    %653 = llvm.mul %628, %652  : i64
    %654 = llvm.mlir.constant(2 : index) : i64
    %655 = llvm.mul %633, %654  : i64
    %656 = llvm.add %653, %655  : i64
    %657 = llvm.add %656, %638  : i64
    %658 = llvm.getelementptr %651[%657] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %650, %658 : !llvm.ptr<i64>
    %659 = llvm.add %638, %637  : i64
    llvm.br ^bb74(%659 : i64)
  ^bb76:  // pred: ^bb74
    %660 = llvm.add %633, %632  : i64
    llvm.br ^bb72(%660 : i64)
  ^bb77:  // pred: ^bb72
    %661 = llvm.add %628, %627  : i64
    llvm.br ^bb70(%661 : i64)
  ^bb78:  // pred: ^bb70
    %662 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    %663 = llvm.insertvalue %181, %662[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %664 = llvm.insertvalue %549, %663[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %665 = llvm.insertvalue %624, %664[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %665 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v2_0", "v4_0", "v3_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(4 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(3 : i64) : i64
    %78 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %60[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %61[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(0 : i64) : i64
    %83 = llvm.getelementptr %51[%82] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %83 : !llvm.ptr<ptr<i8>>
    %84 = llvm.mlir.constant(4 : i64) : i64
    %85 = llvm.call @omTensorCreateUntyped(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.bitcast %87 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %89 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.bitcast %89 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%85, %86, %88, %90) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %91 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%85, %91) : (!llvm.ptr<i8>, i64) -> ()
    %92 = llvm.call @omTensorGetShape(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.call @omTensorGetStrides(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %92[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %93[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %92[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %93[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(2 : i64) : i64
    %105 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %92[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %93[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(3 : i64) : i64
    %110 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %92[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %93[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.mlir.constant(1 : i64) : i64
    %115 = llvm.getelementptr %51[%114] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %85, %115 : !llvm.ptr<ptr<i8>>
    %116 = llvm.mlir.constant(3 : i64) : i64
    %117 = llvm.call @omTensorCreateUntyped(%116) : (i64) -> !llvm.ptr<i8>
    %118 = llvm.mlir.constant(1 : i64) : i64
    %119 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %120 = llvm.bitcast %119 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %121 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %122 = llvm.bitcast %121 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%117, %118, %120, %122) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %123 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%117, %123) : (!llvm.ptr<i8>, i64) -> ()
    %124 = llvm.call @omTensorGetShape(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %125 = llvm.call @omTensorGetStrides(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %126 = llvm.mlir.constant(0 : i64) : i64
    %127 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %128 = llvm.getelementptr %124[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %130 = llvm.getelementptr %125[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(1 : i64) : i64
    %132 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %133 = llvm.getelementptr %124[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %135 = llvm.getelementptr %125[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(2 : i64) : i64
    %137 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %138 = llvm.getelementptr %124[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %140 = llvm.getelementptr %125[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.mlir.constant(2 : i64) : i64
    %142 = llvm.getelementptr %51[%141] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %117, %142 : !llvm.ptr<ptr<i8>>
    %143 = llvm.call @omTensorListCreate(%51, %48, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %143 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<207 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<207 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

